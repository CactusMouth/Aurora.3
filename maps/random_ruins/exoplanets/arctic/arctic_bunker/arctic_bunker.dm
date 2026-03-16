/datum/map_template/ruin/exoplanet/arctic_bunker
	name = "Pre-War Auxiliary Bunker"
	id = "prewar bunker"
	description = "A relitively small bunker used Pre-Interstellar War for local operations and sector management."

	spawn_weight = 3
	spawn_cost = 1
	sectors = list(SECTOR_CORP_ZONE, SECTOR_VALLEY_HALE, SECTOR_BADLANDS, ALL_COALITION_SECTORS, SECTOR_GENERIC)

	prefix = "arctic/arctic_bunker/"
	suffix = "arctic_bunker.dmm"

	planet_types = PLANET_SNOW
	ruin_tags = RUIN_LOWPOP|RUIN_HOSTILE

	unit_test_groups = list(2)

/area/arctic_bunker
	name = "Pre-War Auxiliary Bunker"
	icon_state = "bluenew"
	requires_power = TRUE
	no_light_control = FALSE
	area_flags = AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_INDESTRUCTIBLE_TURFS
