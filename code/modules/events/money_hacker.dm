/datum/event/money_hacker
	var/datum/money_account/affected_account
	endWhen = 100
	var/end_time

/datum/event/money_hacker/setup()
	end_time = world.time + 6000
	if(SSeconomy.all_money_accounts.len)
		affected_account = SSeconomy.get_account(pick(SSeconomy.all_money_accounts))
	else
		kill(TRUE)

/datum/event/money_hacker/announce()
	var/message = "A brute force hack has been detected (in progress since [worldtime2text()]). The target of the attack is: Financial account #[affected_account.account_number], \
	without intervention this attack will succeed in approximately 10 minutes. Required intervention: temporary suspension of affected accounts until the attack has ceased. \
	Notifications will be sent as updates occur.<br>"
	var/my_department = "[station_name()] firewall subroutines"

	for(var/obj/machinery/telecomms/message_server/MS in SSmachinery.all_telecomms)
		if(!MS.use_power || !(MS.z in affecting_z))
			continue
		MS.send_rc_message("Executive Officer's Desk", my_department, message, "", "", 2)


/datum/event/money_hacker/tick()
	if(world.time >= end_time)
		endWhen = activeFor
	else
		endWhen = activeFor + 10

/datum/event/money_hacker/end(var/faked)
	..()

	var/message
	if(affected_account && !affected_account.suspended && !faked)
		//hacker wins
		message = "The hack attempt has succeeded."

		//subtract the money
		var/lost = affected_account.money * 0.8 + (rand(2,4) - 2) / 10
		affected_account.money -= lost

		//create a taunting log entry
		var/datum/transaction/T = new()
		T.target_name = pick("","yo brotha from anotha motha","el Presidente","chieF smackDowN")
		T.purpose = pick("Ne$ ---ount fu%ds init*&lisat@*n","PAY BACK YOUR MUM","Funds withdrawal","pWnAgE","l33t hax","liberationez")
		T.amount = pick("","([rand(0,99999)])","alla money","9001$","HOLLA HOLLA GET DOLLA","([lost])")
		var/date1 = "31 December, 1999"
		var/date2 = "[num2text(rand(1,31))] [pick("January","February","March","April","May","June","July","August","September","October","November","December")], [rand(1000,3000)]"
		T.date = pick("", worlddate2text(), date1, date2)
		var/time1 = rand(0, 99999999)
		var/time2 = "[round(time1 / 36000)+12]:[(time1 / 600 % 60) < 10 ? add_zero(time1 / 600 % 60, 1) : time1 / 600 % 60]"
		T.time = pick("", worldtime2text(), time2)
		T.source_terminal = pick("","[pick("Biesel","New Gibson")] GalaxyNet Terminal #[rand(111,999)]","your mums place","nantrasen high CommanD")
		SSeconomy.add_transaction_log(affected_account,T)

	else
		//crew wins
		message = "The attack has ceased, the affected accounts can now be brought online."

	var/my_department = "[station_name()] firewall subroutines"

	for(var/obj/machinery/telecomms/message_server/MS in SSmachinery.all_telecomms)
		if(!MS.use_power || !(MS.z in affecting_z))
			continue
		MS.send_rc_message("Executive Officer's Desk", my_department, message, "", "", 2)
