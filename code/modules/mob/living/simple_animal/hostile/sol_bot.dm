/mob/living/simple_animal/hostile/sol_bot
	name = "solarian 'sentinel' combat drone"
	desc = "An old solarian combat drone, designed for mostly defensive purposes and the removal of hostile fauna."
	desc_extended = ""
	icon = 'icons/mob/npc/sol_bot.dmi'
	icon_state = "sol_drone"
	ranged = TRUE
	rapid = TRUE
	speak_chance = 5
	universal_speak = FALSE
	turns_per_move = 3
	blood_type = COLOR_OIL
	response_help = "pokes"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	speak_emote = list("beeps")
	emote_hear = list("buzzes","beeps")
	speak = list("Hadii's grace, comrades.","Report any enemy of the Party!", "Attention; this gun is not on stun!")
	emote_see = list("beeps menacingly","whirrs threateningly","scans its immediate vicinity")
	attack_emote = "buzzes menacingly at"
	a_intent = I_HURT
	stop_automated_movement_when_pulled = FALSE
	health = 650
	maxHealth = 650
	speed = 2
	projectiletype = /obj/projectile/bullet/rifle/a762
	projectilesound = 'sound/weapons/gunshot/gunshot_saw.ogg'
	destroy_surroundings = 0

	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0

	faction = "sol"

	tameable = FALSE

	flying = FALSE
	lighting_alpha = LIGHTING_PLANE_ALPHA_SOMEWHAT_INVISIBLE

	psi_pingable = FALSE
	sample_data = null

/mob/living/simple_animal/hostile/sol_bot/Initialize()
	. = ..()

/mob/living/simple_animal/hostile/sol_bot/death()
	..(null,"blows apart!")

	var/turf/current_turf = get_turf(src)
	if(!current_turf)
		qdel(src)
		return

	var/robot_gib_type = /obj/effect/decal/cleanable/blood/gibs/robot
	var/atom/turf_gibs = locate(robot_gib_type) in current_turf
	if(turf_gibs)
		return

	var/list/gib_types = typesof(robot_gib_type)
	var/selected_gib_type = pick(gib_types)
	new selected_gib_type(current_turf)

	spark(current_turf, 1, GLOB.alldirs)

	qdel(src)

/mob/living/simple_animal/hostile/sol_bot/proc/wakeup()
	change_stance(HOSTILE_STANCE_IDLE)

/mob/living/simple_animal/hostile/sol_bot/emp_act(severity)
	. = ..()

	LoseTarget()
	change_stance(HOSTILE_STANCE_TIRED)
	addtimer(CALLBACK(src, PROC_REF(wakeup)), 150)
	if(severity == EMP_HEAVY)
		apply_damage(5)
