/datum/map_template/ruin/exoplanet/arctic_crashed_fighter
	name = "Crashed Mantis-class Interceptor"
	id = "crashed fighter"
	description = "An old Pre-War design interceptor, crashed into the arctic terrain."

	spawn_weight = 1
	spawn_cost = 0.5
	sectors = list(SECTOR_TAU_CETI, SECTOR_ROMANOVICH, SECTOR_CORP_ZONE, SECTOR_VALLEY_HALE, SECTOR_BADLANDS, ALL_COALITION_SECTORS, SECTOR_CRESCENT_EXPANSE_EAST)

	prefix = "arctic/arctic_sol_crash/"
	suffix = "arctic_sol_crash.dmm"

	planet_types = PLANET_SNOW
	ruin_tags = RUIN_LOWPOP|RUIN_WRECK

	unit_test_groups = list(2)

/datum/map_template/ruin/exoplanet/arctic_mining_camp
	name = "Abandoned Mining Camp"
	id = "mining camp"
	description = "An abandoned mining camp on the snowy terrain, with some things left behind still."

	spawn_weight = 1
	spawn_cost = 0.5
	sectors = list(SECTOR_TAU_CETI, SECTOR_ROMANOVICH, SECTOR_CORP_ZONE, SECTOR_VALLEY_HALE, SECTOR_BADLANDS, ALL_COALITION_SECTORS, SECTOR_CRESCENT_EXPANSE_EAST)

	prefix = "arctic/arctic_campsite/"
	suffix = "arctic_campsite.dmm"

	planet_types = PLANET_SNOW
	ruin_tags = RUIN_LOWPOP

	unit_test_groups = list(2)
