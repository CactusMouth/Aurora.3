/datum/gear/eyes/blindfold
	display_name = "vaurca blindfold"
	path = /obj/item/clothing/glasses/sunglasses/blinders
	cost = 2
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/mask/vaurca
	display_name = "mandible garment"
	path = /obj/item/clothing/mask/gas/vaurca
	cost = 1
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/mask/filterport
	display_name = "filter port"
	path = /obj/item/clothing/mask/gas/vaurca/filter
	cost = 1
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"

/datum/gear/mask/expression
	display_name = "expression mask selection"
	path = /obj/item/clothing/head/expression
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/mask/expression/New()
	..()
	var/list/masks = list()
	masks["expression mask, human"] = /obj/item/clothing/head/expression
	masks["expression mask, skrell"] = /obj/item/clothing/head/expression/skrell
	masks["expression mask, unathi"] = /obj/item/clothing/head/expression/unathi
	gear_tweaks += new /datum/gear_tweak/path(masks)

/datum/gear/head/shaper
	display_name = "shaper helmet"
	path = /obj/item/clothing/head/shaper
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/cape
	display_name = "tunnel cloak (recolourable)"
	path = /obj/item/storage/backpack/cloak
	cost = 1
	slot = slot_back
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/cape_selection
	display_name = "tunnel cloak selection"
	path = /obj/item/storage/backpack/cloak
	cost = 1
	slot = slot_back
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/cape_selection/New()
	..()
	var/list/capes = list()
	capes["tunnel cloak, Sedantis"] = /obj/item/storage/backpack/cloak/sedantis
	capes["tunnel cloak, Zo'ra"] = /obj/item/storage/backpack/cloak/zora
	capes["tunnel cloak, K'lax"] = /obj/item/storage/backpack/cloak/klax
	capes["tunnel cloak, C'thur"] = /obj/item/storage/backpack/cloak/cthur
	capes["tunnel cloak, medical"] = /obj/item/storage/backpack/cloak/medical
	capes["tunnel cloak, engineering"] = /obj/item/storage/backpack/cloak/engi
	capes["tunnel cloak, atmospherics"] = /obj/item/storage/backpack/cloak/atmos
	capes["tunnel cloak, cargo"] = /obj/item/storage/backpack/cloak/cargo
	capes["tunnel cloak, science"] = /obj/item/storage/backpack/cloak/sci
	capes["tunnel cloak, security"] = /obj/item/storage/backpack/cloak/sec
	capes["tunnel cloak, NanoTrasen"] = /obj/item/storage/backpack/cloak/nt
	capes["tunnel cloak, Orion Express"] = /obj/item/storage/backpack/cloak/orion
	capes["tunnel cloak, Hephaestus Industries"] = /obj/item/storage/backpack/cloak/heph
	capes["tunnel cloak, Zavodskoi Interstellar"] = /obj/item/storage/backpack/cloak/zavod
	capes["tunnel cloak, Zeng-Hu Pharmaceuticals"] = /obj/item/storage/backpack/cloak/zeng
	capes["tunnel cloak, Ve'katak Phalanx"] = /obj/item/storage/backpack/cloak/phalanx
	gear_tweaks += new /datum/gear_tweak/path(capes)

/datum/gear/vaurca_robe
	display_name = "hive cloak"
	description = "A selection of vaurca colored Hive cloaks."
	path = /obj/item/clothing/suit/vaurca
	cost = 1
	slot = slot_wear_suit
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"

/datum/gear/vaurca_robe/New()
	..()
	var/list/cloaks = list()
	cloaks["hive cloak, red and golden"] = /obj/item/clothing/suit/vaurca
	cloaks["hive cloak, red and silver"] = /obj/item/clothing/suit/vaurca/silver
	cloaks["hive cloak, brown and silver"] = /obj/item/clothing/suit/vaurca/brown
	cloaks["hive cloak, blue and golden"] = /obj/item/clothing/suit/vaurca/blue
	gear_tweaks += new /datum/gear_tweak/path(cloaks)

/datum/gear/uniform/vaurca
	display_name = "vaurca clothes"
	path = /obj/item/clothing/under/vaurca
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/uniform/vaurca_harness
	display_name = "vaurcan gear harness"
	description = "A selection of vaurca colored gear harnesses."
	path = /obj/item/clothing/under/vaurca/gearharness
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION

/datum/gear/uniform/vaurca_harness/New()
	..()
	var/list/harness = list()
	harness["vaurcan gear harness, brown"] = /obj/item/clothing/under/vaurca/gearharness
	harness["vaurcan gear harness, white"] = /obj/item/clothing/under/vaurca/gearharness/white
	harness["vaurcan gear harness, black"] = /obj/item/clothing/under/vaurca/gearharness/black
	gear_tweaks += new /datum/gear_tweak/path(harness)

/datum/gear/uniform/vaurca_harness_colorable
	display_name = "vaurcan gear harness (colorable)"
	description = "A tight-fitting gear harness designed for the Vaurcan form. Mass-produced from equally mass-produced materials."
	path = /obj/item/clothing/under/vaurca/gearharness/colorable
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/vaurca
	display_name = "shaper robes"
	path = /obj/item/clothing/suit/vaurca/shaper
	slot = slot_wear_suit
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	cost = 1
	flags = GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/shoes/vaurca
	display_name = "vaurca shoes"
	path = /obj/item/clothing/shoes/vaurca
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/vaurca_shroud
	display_name = "vaurcan shroud"
	description = "A selection of vaurca colored shrouds."
	path = /obj/item/clothing/head/shroud
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	sort_category = "Xenowear - Vaurca"

/datum/gear/suit/vaurca_shroud/New()
	..()
	var/list/shrouds = list()
	shrouds["vaurcan shroud, blue"] = /obj/item/clothing/head/shroud
	shrouds["vaurcan shroud, red"] = /obj/item/clothing/head/shroud/red
	shrouds["vaurcan shroud, green"] = /obj/item/clothing/head/shroud/green
	shrouds["vaurcan shroud, purple"] = /obj/item/clothing/head/shroud/purple
	shrouds["vaurcan shroud, brown"] = /obj/item/clothing/head/shroud/brown
	gear_tweaks += new /datum/gear_tweak/path(shrouds)

/datum/gear/suit/vaurca_shroud_colorable
	display_name = "vaurcan shroud (colorable)"
	description = "A selection of vaurca colored shrouds."
	path = /obj/item/clothing/head/shroud/colorable
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_COLOR_SELECTION

/datum/gear/accessory/vaurca_mantle
	display_name = "vaurcan mantle"
	path = /obj/item/clothing/accessory/poncho/vaurca
	cost = 1
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION | GEAR_HAS_ACCENT_COLOR_SELECTION

/datum/gear/augment/auxiliary_processor
	display_name = "secondary language processor"
	description = "An augment that allows a vaurca to speak and understand a related language. These are only used by their respective groups, and act as an auxiliary to the hive's main language processor."
	path = /obj/item/organ/internal/augment/language/mikuetz
	cost = 1
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK)
	flags = GEAR_NO_SELECTION
	origin_restriction = list(/singleton/origin_item/origin/queenless_zora, /singleton/origin_item/origin/queenless_klax, /singleton/origin_item/origin/klatxatl, /singleton/origin_item/origin/mikuetz, /singleton/origin_item/origin/cthur, /singleton/origin_item/origin/mouv, /singleton/origin_item/origin/vytel, /singleton/origin_item/origin/xetl, /singleton/origin_item/origin/cthur_b, /singleton/origin_item/origin/mouv_b, /singleton/origin_item/origin/vytel_b)

/datum/gear/augment/auxiliary_processor/New()
	..()
	var/list/auxiliary_processors = list()
	auxiliary_processors["Mi'kuetz [LANGUAGE_AZAZIBA] language processor"] = /obj/item/organ/internal/augment/language/mikuetz
	auxiliary_processors["Zino [LANGUAGE_GUTTER] language processor"] = /obj/item/organ/internal/augment/language/zino
	auxiliary_processors["Eridani/Azquil [LANGUAGE_TRADEBAND] language processor"] = /obj/item/organ/internal/augment/language/tradeband
	gear_tweaks += new /datum/gear_tweak/path(auxiliary_processors)

/datum/gear/vaurca_lunchbox
	display_name = "vaurca lunchbox"
	description = "A lunchbox selection containing various kois products."
	cost = 2
	path = /obj/item/storage/toolbox/lunchbox
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK)

/datum/gear/vaurca_lunchbox/New()
	..()
	var/list/lunchboxes = list()
	for(var/lunchbox_type in typesof(/obj/item/storage/toolbox/lunchbox))
		var/obj/item/storage/toolbox/lunchbox/lunchbox = lunchbox_type
		if(!initial(lunchbox.filled))
			lunchboxes[initial(lunchbox.name)] = lunchbox_type
	sortTim(lunchboxes, GLOBAL_PROC_REF(cmp_text_asc))
	gear_tweaks += new /datum/gear_tweak/path(lunchboxes)
	gear_tweaks += new /datum/gear_tweak/contents(lunchables_vaurca(), lunchables_vaurca_snack(), lunchables_drinks(), lunchables_utensil())

/datum/gear/kois_mre
	display_name = "k'ois MRE"
	description = "K'ois MRE."
	cost = 1
	path = /obj/item/storage/box/fancy/mre/menu12
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK)
	flags = GEAR_NO_SELECTION

ABSTRACT_TYPE(/datum/gear/ears/vaurca)

/datum/gear/ears/vaurca/rings
	display_name = "bulwark horn rings"
	description = "Rings worn by Bulwarks to decorate their horns."
	cost = 1
	path = /obj/item/clothing/ears/bulwark/rings
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_BULWARK)
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/skrell_projector/vaurca_projector
	display_name = "virtual reality looking-glass"
	description = "A holographic projector using advanced technology that immerses someone into a scene. It is developed and distributed by Hive Zo'ra and allows the viewer to peer in real-time into virtual reality realms specifically designed for outside viewing such as those belonging to High Queen Vaur."
	cost = 2
	path = /obj/item/skrell_projector/vaurca_projector
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK)
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION

/datum/gear/augment/vaurcatool
	display_name = "vaurca integrated toolset"
	description = "A heavy arm-mounted toolset designed for use by Bound Workers and Bulwarks."
	cost = 5
	path = /obj/item/organ/internal/augment/tool/combitool/vaurca
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)

/datum/gear/augment/vaurcatool/New()
	..()
	var/list/augs = list()
	augs["vaurca integrated toolset, right hand"] = /obj/item/organ/internal/augment/tool/combitool/vaurca
	augs["vaurca integrated toolset, left hand"] = /obj/item/organ/internal/augment/tool/combitool/vaurca/left
	gear_tweaks += new /datum/gear_tweak/path(augs)

/datum/gear/augment/vaurcasec
	display_name = "vaurca integrated electric weapon"
	description = "A Vaurca-designed robotic hand that can deliver a painful electric shock."
	cost = 2
	path = /obj/item/organ/external/hand/right/vaurca/security
	whitelisted = list(SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT)
	sort_category = "Xenowear - Vaurca"
	allowed_roles = list("Security Officer", "Warden", "Security Personnel")
	flags = GEAR_NO_SELECTION

/datum/gear/augment/vaurcamed
	display_name = "vaurca integrated biological analyser"
	description = "A Vaurca-designed robotic hand capable of providing a medical scan of a target."
	cost = 2
	path = /obj/item/organ/external/hand/right/vaurca/medical
	whitelisted = list(SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_WORKER)
	sort_category = "Xenowear - Vaurca"
	allowed_roles = list("Physician", "Surgeon", "Paramedic", "Medical Intern", "Psychiatrist", "Pharmacist", "Medical Personnel")
	flags = GEAR_NO_SELECTION

/datum/gear/augment/vaurcamag
	display_name = "vaurca integrated mag-claws"
	description = "An integrated magnetic grip system, designed for Vaurcae without easy access to magboots."
	cost = 2
	path = /obj/item/organ/internal/augment/vaurca_mag
	sort_category = "Xenowear - Vaurca"
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK)
	allowed_roles = list("Shaft Miner", "Engineer", "Atmospheric Technician", "Engineering Apprentice", "Xenoarchaeologist", "Engineering Personnel", "Operations Personnel", "Paramedic", "Medical Personnel")

/datum/gear/accessory/tret_passcard
	display_name = "tret passcard"
	description = "A Hegemony-issued passcard for K'laxan Vaurcae."
	path = /obj/item/clothing/accessory/badge/passcard/tret
	cost = 1
	whitelisted = list(SPECIES_VAURCA_BREEDER, SPECIES_VAURCA_BULWARK, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_WORKER)
	culture_restriction = list(/singleton/origin_item/culture/klax, /singleton/origin_item/culture/klax_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION

/datum/gear/head/vaurca_zora_shroud
	display_name = "zora flag shroud"
	path = /obj/item/clothing/head/vaurca_breeder/flag
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/zora_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/head/vaurca_klax_shroud
	display_name = "klax flag shroud"
	path = /obj/item/clothing/head/vaurca_breeder/klax/flag
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/klax_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/head/vaurca_cthur_shroud
	display_name = "cthur flag shroud"
	path = /obj/item/clothing/head/vaurca_breeder/cthur/flag
	cost = 1
	slot = slot_head
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/cthur_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/accessory/vaurca_rockstone
	display_name = "klax rockstone cape"
	description = "A cape for Moghesian nobility for a K'lax Vaurca."
	path = /obj/item/clothing/accessory/vaurca_breeder/rockstone_cape
	cost = 1
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/klax_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION | GEAR_HAS_ACCENT_COLOR_SELECTION

/datum/gear/accessory/vaurca_starcape
	display_name = "cthur star cape"
	description = "A decorated cape, fit for a C'thuric Ta."
	path = /obj/item/clothing/accessory/vaurca_breeder/star_cape
	cost = 1
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/cthur_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION

/datum/gear/accessory/vaurca_cthur_llc
	display_name = "cthur, llc cape"
	description = "A cape for C'thur, LLC Vaurca Gyne diplomats."
	path = /obj/item/clothing/accessory/vaurca_breeder/cthur_llc_cape
	cost = 1
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	culture_restriction = list(/singleton/origin_item/culture/cthur_breeder)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_DESC_SELECTION

/datum/gear/head/vaurca_gyne_shroud
	display_name = "colorable gyne shroud"
	path = /obj/item/clothing/head/vaurca_breeder/colorable
	cost = 1
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/head/vaurca_gyne_clothes
	display_name = "colorable gyne clothes"
	path = /obj/item/clothing/suit/vaurca/breeder/colorable
	cost = 1
	slot = slot_wear_suit
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/head/vaurca_gyne_shoes
	display_name = "colorable gyne shoes"
	path = /obj/item/clothing/shoes/vaurca/breeder/colorable
	cost = 1
	slot = slot_shoes
	whitelisted = list(SPECIES_VAURCA_BREEDER)
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_NAME_SELECTION | GEAR_HAS_DESC_SELECTION | GEAR_HAS_COLOR_SELECTION

/datum/gear/suit/unathi_mantle_tret
	display_name = "tretian guild mantle"
	description = "A yellow mantle, worn by Tretian Guild workers in the Izweski Hegemony."
	path = /obj/item/clothing/accessory/poncho/unathimantle/tretian
	cost = 1
	sort_category = "Xenowear - Vaurca"
	flags = GEAR_HAS_COLOR_SELECTION
	whitelisted = list(SPECIES_VAURCA_WORKER, SPECIES_VAURCA_WARRIOR, SPECIES_VAURCA_ATTENDANT, SPECIES_VAURCA_BULWARK, SPECIES_UNATHI)
	culture_restriction = list(/singleton/origin_item/culture/klax)
