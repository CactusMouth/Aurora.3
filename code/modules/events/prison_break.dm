/datum/event/prison_break
	startWhen		= 5
	announceWhen	= 75

	var/releaseWhen = 60
	var/list/area/areas = list()		//List of areas to affect. Filled by start()
	ic_name = "an imprisonment system virus"
	no_fake = 1

	var/eventDept = "Security"			//Department name in announcement
	var/list/areaName = list("Brig")	//Names of areas mentioned in AI and Engineering announcements
	var/list/areaType = list(/area/security/prison, /area/security/brig)	//Area types to include.
	var/list/areaNotType = list()		//Area types to specifically exclude.

/datum/event/prison_break/xenobiology
	eventDept = "Science"
	areaName = list("Xenobiology")
	areaType = list(/area/rnd/xenobiology)
	areaNotType = list(/area/rnd/xenobiology/xenoflora, /area/rnd/xenobiology/xenoflora_storage)

/datum/event/prison_break/station
	eventDept = "Station"
	areaName = list("Brig","Xenobiology")
	areaType = list(/area/security/prison, /area/security/brig, /area/rnd/xenobiology)
	areaNotType = list(/area/rnd/xenobiology/xenoflora, /area/rnd/xenobiology/xenoflora_storage)

/datum/event/prison_break/bridge
	eventDept = "Bridge"
	areaName = list("Bridge")
	areaType = list(/area/bridge, /area/teleporter, /area/crew_quarters/heads/cryo, /area/maintenance/maintcentral)
	areaNotType = list(/area/bridge/aibunker, /area/bridge/levela, /area/bridge/selfdestruct)

/datum/event/prison_break/setup()
	announceWhen = rand(75, 105)
	releaseWhen = rand(60, 90)

	src.endWhen = src.releaseWhen+2


/datum/event/prison_break/announce()
	if(areas && areas.len > 0)
		command_announcement.Announce("[pick("Gr3y.T1d3 virus","Malignant trojan")] detected in [station_name()] [(eventDept == "Security")? "imprisonment":"containment"] subroutines. Secure any compromised areas immediately. AI involvement is recommended.", "[eventDept] Alert", zlevels = affecting_z)


/datum/event/prison_break/start()
	..()

	for(var/area/A in GLOB.the_station_areas)
		if(is_type_in_list(A,areaType) && !is_type_in_list(A,areaNotType))
			areas += A

	if(areas && areas.len > 0)
		var/my_department = "[station_name()] firewall subroutines"
		var/rc_message = "An unknown malicious program has been detected in the [english_list(areaName)] lighting and airlock control systems at [worldtime2text()]. Systems will be fully compromised within approximately three minutes. Direct intervention is required immediately.<br>"
		for(var/obj/machinery/telecomms/message_server/MS in SSmachinery.all_telecomms)
			MS.send_rc_message("Engineering", my_department, rc_message, "", "", 2)
		for(var/mob/living/silicon/ai/A in GLOB.player_list)
			to_chat(A, SPAN_DANGER("Malicious program detected in the [english_list(areaName)] lighting and airlock control systems by [my_department]."))

	else
		log_world("ERROR: Could not initate grey-tide. Unable to find suitable containment area.")
		kill(TRUE)


/datum/event/prison_break/tick()
	if(activeFor == releaseWhen)
		if(areas && areas.len > 0)
			for(var/area/A in areas)
				for(var/obj/machinery/light/L in A)
					L.flicker(10)


/datum/event/prison_break/end(var/faked)
	..()

	for(var/area/A in shuffle(areas))
		A.prison_break()
