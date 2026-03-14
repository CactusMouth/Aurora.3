/datum/map_template/ruin/exoplanet/arctic_lz
	name = "Abandoned Solarian Outpost"
	id = "arctic_lz"
	description = "A long abandoned solarian outpost."

	sectors = list(ALL_CRESCENT_EXPANSE_SECTORS, ALL_VOID_SECTORS, SECTOR_WEEPING_STARS, SECTOR_BADLANDS, SECTOR_VALLEY_HALE, SECTOR_CRESCENT_EXPANSE_WEST, SECTOR_CRESCENT_EXPANSE_EAST)

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

/area/shuttle/sol_interceptor
	name = "Solarian Interceptor"

/obj/effect/overmap/visitable/ship/landable/sol_interceptor
	name = "Solarian Light Interceptor"
	desc = "An outdated variant of the Fuji-class space superiority fighter, the Mantis-class was often used by the local planetary defence forces or smaller patrol groups. Having been removed from active service for some time, the Mantis is commonly seen in the hands of pirates, mercenaries, and SDF forces."
	class = "SAMV"
	shuttle = "Solarian Light Interceptor"
	icon_state = "canary"
	moving_state = "canary_moving"
	colors = list("#9dc04c", "#52c24c")
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 1200
	fore_dir = SOUTH
	vessel_size = SHIP_SIZE_TINY
	designer = "Solarian Navy"
	weapons = "Extruding fore-mounted low-caliber ballistic rotary armament"
	sizeclass = "Light fighter and interceptor"
	shiptype = "Anti-ship high-speed combat and interception"

/obj/machinery/computer/shuttle_control/explore/terminal/light_interceptor
	name = "shuttle control console"
	shuttle_tag = "Solarian Light Interceptor"

/datum/shuttle/autodock/overmap/sol_interceptor
	name = "Solarian Light Interceptor"
	move_time = 45
	shuttle_area = list(/area/shuttle/sol_interceptor)
	current_location = "nav_start_sol_interceptor"
	landmark_transition = "nav_transit_sol_interceptor"
	range = 1
	fuel_consumption = 1
	logging_home_tag = "nav_start_sol_interceptor"
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/sol_interceptor/start
	name = "Solarian Light Interceptor - Landing Pad"
	landmark_tag = "nav_start_sol_interceptor"
	docking_controller = "airlock_arctic_lz"
	base_area = /area/arctic_lz/exterior
	base_turf = /turf/simulated/floor/plating
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/effect/shuttle_landmark/sol_interceptor/transit
	name = "In transit"
	landmark_tag = "nav_transit_sol_interceptor"
	base_turf = /turf/space/transit/north
