/datum/map_template/ruin/exoplanet/arctic_lz
	name = "Abandoned Solarian Outpost"
	id = "arctic_lz"
	description = "A long abandoned solarian outpost."

	sectors = list(ALL_COALITION_SECTORS)

	prefix = "arctic/arctic_lz/"
	suffix = "arctic_lz.dmm"

	planet_types = PLANET_SNOW

	unit_test_groups = list(1)

/area/arctic_lz
	name = "abandoned solarian outpost"
	icon_state = "unknown"
	requires_power = TRUE
	no_light_control = TRUE
	is_outside = OUTSIDE_NO

/area/arctic_lz/armoury
	name = "Armoury"
	icon_state = "armory"

/area/arctic_lz/command
	name = "Command Center"
	icon_state = "tcomsatcham"

/area/arctic_lz/quarters
	name = "Crew Quarters"
	icon_state = "quarters"

/area/arctic_lz/eva
	name = "EVA Preparation Room"
	icon_state = "eva"

/area/arctic_lz/engineering
	name = "Engineering"
	icon_state = "engineering"

/area/arctic_lz/exterior
	name = "Exterior"
	icon_state = "space"
	is_outside = OUTSIDE_YES
