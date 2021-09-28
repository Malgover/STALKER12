/**
 * Controller mutant file.
 *
 * You feel it stare deep into your soul.
**/

// Mob description
/mob/living/simple_animal/hostile/mutant/controller
	name = "Controller"
	desc = "A rare type of mutant with the appearance of a deformed human with ridiculous physical properties. He has barely any clothes besides torn rags displayed randomly on the chest.Looking at him sends chills down your spine."
	eng_desc = "A rare type of mutant with the appearance of a deformed human with ridiculous physical properties. He has barely any clothes besides torn rags displayed randomly on the chest.Looking at him sends chills down your spine."
	turns_per_move = 2
	speed = 1
	a_intent = "harm"
	search_objects = 1
	icon_state = "controller"
	icon_living = "controller"
	icon_dead = "controller_dead"
	attacktext = "slashes"
	speak_emote = list("growls", "roars")
	emote_see = list("growls!", "roars!")
	maxHealth = 200
	healable = 1
	melee_damage_lower = 25
	attack_sound = 'sound/stalker/mobs/mutants/attack/controller_attack.ogg'
	idle_sounds =	list('sound/stalker/mobs/mutants/idle/controller_idle_1.ogg',
						'sound/stalker/mobs/mutants/idle/controller_idle_2.ogg'
						)
	death_sound = 'sound/stalker/mobs/mutants/death/controller_death.ogg'
	melee_damage_upper = 30
	fearborder = 0
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4
	minbodytemp = 0
	maxbodytemp = 1500
	faction = list("stalker_mutants1")
	del_on_death = 0
	robust_searching = 1
	deathmessage = "Controller screams!"
	layer = MOB_LAYER - 0.1
	loot = list(/obj/item/weapon/stalker/loot/controller_brain)
	random_loot = 1
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	attack_type = "claw"
	move_to_delay = 10
	speak_chance = 5
	vision_range = 15
	aggro_vision_range = 15
	ranged_cooldown_cap = 1
	min_range_distance = 2
	ranged = 1
	var/attack_stage = 0
	var/last_attack_time = 0
	see_through_walls = 1
	rating_add = 350
	long_attack = 1

// Life process
/mob/living/simple_animal/hostile/mutant/controller/Life()
	// What the fuck is this shit?!
	. = ..()
	if(!.)
		return 0

	// Area damage
	for(var/mob/living/carbon/human/H in view(15, src))
		var/is_hostile = 1

		for(var/faction_ in faction)
			if(faction_ in H.faction)
				is_hostile = 0

		if(!is_hostile)
			continue

		var/damage_ = 0
		switch(get_dist(src, H))
			if(0 to 2)
				damage_ = 20
			if(3 to 4)
				damage_ = 15
			if(5 to 6)
				damage_ = 10
			if(7 to 8)
				damage_ = 5
			if(8 to INFINITY)
				damage_ = 20 / get_dist(src, H)
		H.apply_damage(damage_, PSY, null, blocked = getarmor("head", "psy", 0))
		if(H.psyloss >= 200)
			H.zombiefied = MENTAL_ZOMBIE

// Ranged attack
/mob/living/simple_animal/hostile/mutant/controller/OpenFire(atom/A)
	if(!istype(A, /mob/living/carbon/human))
		return

	if(attack_stage && last_attack_time + (10 * attack_stage) + 5 < world.time)
		ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
		attack_stage = 0
		return

	var/mob/living/carbon/human/H = A

	switch(attack_stage)
		if(0)
			visible_message("<span class='danger'><b>[src]</b> stares at [H]!</span>")
			last_attack_time = world.time

			if(H in view(15, src))
				H << sound('sound/stalker/mobs/mutants/attack/controller_tube_prepare.ogg', wait = 0, channel = 47, volume = 50)
				attack_stage++
			else
				ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
				attack_stage = 0

		if(1)
			if(H in view(15, src))
				last_attack_time = world.time
				attack_stage++
			else
				ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
				attack_stage = 0

		if(2)
			if(H in view(15, src))
				last_attack_time = world.time
				H << sound('sound/stalker/mobs/mutants/attack/controller_whoosh.ogg', wait = 0, channel = 47, volume = 50)
				visible_message("<span class='danger'><b>[src]</b> stares right into [A] eyes!</span>")
				H.apply_damage(100, PSY, null, blocked = getarmor("head", "psy", 0))
				if(H.psyloss >= 200)
					H.zombiefied = MENTAL_ZOMBIE

			ranged_cooldown = max(0, ranged_cooldown_cap - attack_stage)
			attack_stage = 0
	return