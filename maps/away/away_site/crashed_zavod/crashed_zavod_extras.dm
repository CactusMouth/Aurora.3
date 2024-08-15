// Corpses


/obj/effect/landmark/corpse/zavod
	name = "Zavod Crew"
	corpseshoes = /obj/item/clothing/shoes/laceup
	corpseuniform = /obj/item/clothing/under/rank/suit_jacket
	corpsehelmet = /obj/item/clothing/head/softcap/zavod/alt
	corpseid = TRUE
	corpseidjob = "Crew Member (Zavod)"
	corpseidicon = "necrosec_card"
	corpseidaccess = "Zavod Ship Crew Member"
	species = SPECIES_HUMAN

/obj/effect/landmark/corpse/zavod/overseer/do_extra_customization(mob/living/carbon/human/M)
	M.ChangeToHusk()
	M.adjustBurnLoss(rand(200,400))
	M.dir = pick(GLOB.cardinal)


/obj/effect/landmark/corpse/zavod/security
	name = "Zavod Security Officer"
	corpseuniform = /obj/item/clothing/under/rank/security/zavod/zavodsec
	corpseshoes = /obj/item/clothing/shoes/jackboots
	corpsehelmet = /obj/item/clothing/head/beret/corporate/zavod_alt
	corpseglasses = /obj/item/clothing/glasses/hud/security/zavod
	corpsegloves = /obj/item/clothing/gloves/black_leather
	corpseid = TRUE
	corpseidjob = "Security Officer (Zavod)"
	corpseidicon = "necrosec_card"
	corpseidaccess = "Zavod Ship Crew Member"
	species = SPECIES_HUMAN

/obj/effect/landmark/corpse/zavod/do_extra_customization(mob/living/carbon/human/M)
	M.ChangeToHusk()
	M.adjustBurnLoss(rand(200,400))
	M.dir = pick(GLOB.cardinal)




/obj/effect/landmark/corpse/zavod/security/ipc
	name = "Zavod Security Officer"
	corpseuniform = /obj/item/clothing/under/rank/security/zavod/zavodsec
	corpseshoes = /obj/item/clothing/shoes/jackboots
	corpsehelmet = /obj/item/clothing/head/helmet
	corpsegloves = /obj/item/clothing/gloves/black_leather
	corpsesuit = /obj/item/clothing/suit/armor/carrier/generic
	corpseid = TRUE
	corpseidjob = "Security IPC (Zavod)"
	corpseidicon = "necrosec_card"
	corpseidaccess = "Zavod Ship Crew Member"
	species = SPECIES_IPC

/obj/effect/landmark/corpse/zavod/do_extra_customization(mob/living/carbon/human/M)
	M.adjustBurnLoss(rand(200,400))
	M.dir = pick(GLOB.cardinal)
	var/obj/item/organ/internal/ipc_tag/tag = M.internal_organs_by_name[BP_IPCTAG]
	if(istype(tag))
		tag.serial_number = uppertext(dd_limittext(md5(M.real_name), 12))
		tag.ownership_info = IPC_OWNERSHIP_COMPANY
		tag.citizenship_info = CITIZENSHIP_NONE

/obj/effect/landmark/corpse/zavod/overseer
	name = "Zavod Overseer"
	corpseshoes = /obj/item/clothing/shoes/laceup
	corpseuniform = /obj/item/clothing/under/rank/liaison/zavod
	corpsesuit = /obj/item/clothing/suit/storage/liaison/zavod
	corpsehelmet = /obj/item/clothing/head/beret/corporate/zavod
	corpseidjob = "Overseer (Zavod)"

/obj/effect/landmark/corpse/zavod/overseer/do_extra_customization(mob/living/carbon/human/M)
	M.ChangeToHusk()
	M.adjustBurnLoss(rand(200,400))
	M.dir = pick(GLOB.cardinal)

/obj/effect/landmark/corpse/zavod/engineer
	name = "Zavod Engineer"
	corpseshoes = /obj/item/clothing/shoes/workboots
	corpseuniform = /obj/item/clothing/under/rank/engineer/zavod
	corpsesuit = /obj/item/clothing/suit/storage/hazardvest
	corpsehelmet = /obj/item/clothing/head/beret/corporate/zavod
	corpseidjob = "Engineer (Zavod)"

/obj/effect/landmark/corpse/zavod/overseer/do_extra_customization(mob/living/carbon/human/M)
	if(prob(25))
		M.equip_to_slot_or_del(new /obj/item/clothing/suit/space/void/engineering(M), slot_wear_suit)
		M.equip_to_slot_or_del(new /obj/item/tank/oxygen(M), slot_s_store)
	M.ChangeToHusk()
	M.adjustBruteLoss(rand(200,400))
	M.dir = pick(GLOB.cardinal)

