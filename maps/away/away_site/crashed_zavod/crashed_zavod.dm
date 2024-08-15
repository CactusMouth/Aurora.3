/datum/map_template/ruin/away_site/crashed_zavod
	name = "crashed zavod ship"
	description = "a crashed zavod ship"

	prefix = "away_site/crashed_zavod/"
	suffix = "crashed_zavod.dmm"

	sectors = list(SECTOR_TAU_CETI, SECTOR_ROMANOVICH, SECTOR_CORP_ZONE, SECTOR_VALLEY_HALE, SECTOR_BADLANDS, ALL_COALITION_SECTORS, SECTOR_SRANDMARR)
	spawn_weight = 1
	spawn_cost = 1
	id = "crashed_zavod"

	unit_test_groups = list(1)

/singleton/submap_archetype/crashed_zavod
	map = "crashed_zavod"
	descriptor = "a crashed zavod ship"

/obj/effect/overmap/visitable/crashed_zavod
	name = "Crashed Ship"
	desc = "\
	Scans reveal, after much delay, a Zavodskoi Interstellar cargo frieghter. This one seems to be somewhat damaged, but overall intact.\
	It's transponder seems to be marked for salvaging by Zavodskoi, likely deemed unrecoverable, but also warns of some sort of threat aboard.\
	Sensors seem to be having trouble with scanning the ship any more in-depth, as a sort of jamming being active on the ship.\
	"

	static_vessel = TRUE
	generic_object = FALSE
	icon = 'icons/obj/overmap/overmap_ships.dmi'
	icon_state = "asteroid_cluster"
	color = "#8b17700"

	designer = "Zavodskoi Interstellar"
	volume = "N/A, interference with sensors."
	weapons = "N/A, interference with sensors."
	sizeclass = "Freighter"

	initial_generic_waypoints = list(
		// docks
		"nav_crashed_zavod_dock_east",
		"nav_crashed_zavod_dock_south",
		// space
		"nav_crashed_zavod_shutters_north",
		"nav_crashed_zavod_shutters_south",
		"nav_crashed_zavod_space_west",
		"nav_crashed_zavod_space_north",
	)

