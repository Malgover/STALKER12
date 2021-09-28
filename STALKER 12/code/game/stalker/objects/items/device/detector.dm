/obj/item/device/detector
	name = "Detector"
	desc = "The ECHO-type detector is an incredibly old variant of the Detector-class systems most commonly used by start-up Stalkers. It's functionality is incredibly limited due to not originally being constructed for anomaly-research, and can only classify and detect common artifacts."
	icon = 'icons/stalker/device_new.dmi'
	icon_state = "echo_off"
	var/icon_state_inactive = "echo_off"
	var/icon_state_active = "echo_on"
	var/icon_state_null = "echo_null"
	item_state = "electronic"
	w_class = 1
	var/atom/target = null
	var/min_dist = 8
	var/on = 0
	var/level_s = 0
	var/list/arts = list()
	var/mob/living/carbon/human/user = null
	var/cooldown = 0
	var/kostil = 0
	var/timer_detector = 0
	var/list/fakearts = list()

/obj/item/device/detector/blink
	name = "Echo"
	desc = "The ECHO-type detector is an incredibly old variant of the Detector-class systems most commonly used by start-up Stalkers. It's functionality is incredibly limited due to not originally being constructed for anomaly-research, and can only classify and detect common artifacts."
	eng_desc = "The ECHO-type detector is an incredibly old variant of the Detector-class systems most commonly used by start-up Stalkers. It's functionality is incredibly limited due to not originally being constructed for anomaly-research, and can only classify and detect common artifacts."
	icon_state_inactive = "echo_off"
	icon_state_active = "echo_on"
	icon_state_null = "echo_null"
	level_s = 1
	//level_s = 2

/obj/item/device/detector/bear
	name = "Bear"
	desc = "The BEAR-type detector is the second generation of Detector-class systems used by Stalkers who can afford the system! Built with The Zone in mind, it's durable and robust design has made it a mainstay amongst veteran stalkers. It'll detect almost every sort of Artifact!"
	eng_desc = "The BEAR-type detector is the second generation of Detector-class systems used by Stalkers who can afford the system! Built with The Zone in mind, it's durable and robust design has made it a mainstay amongst veteran stalkers. It'll detect almost every sort of Artifact!"
	icon_state = "bear_off"
	icon_state_inactive = "bear_off"
	icon_state_active = "bear_on"
	icon_state_null = "bear_null"
	//level_s = 2
	level_s = 3

/obj/item/device/detector/veles
	name = "Veles"
	desc = "The VELES-type detector is the latest and most powerful form of Detector within the Zone. Rarely seen even in the hands of Legendary stalkers, this device provides an accurate real-time HUD of the artifacts location and even some important data on it!"
	eng_desc = "The VELES-type detector is the latest and most powerful form of Detector within the Zone. Rarely seen even in the hands of Legendary stalkers, this device provides an accurate real-time HUD of the artifacts location and even some important data on it!"
	icon_state = "veles_off"
	icon_state_inactive = "veles_off"
	icon_state_active = "veles_on"
	icon_state_null = "veles_null"
	level_s = 4

/obj/item/device/detector/New()
	..()
	arts = list()
	fakearts = list()

/obj/item/device/detector/attack_self(mob/user)
	if(!on)
		if(world.time > cooldown + 5)
			playsound(user, "sound/stalker/detector/detector_draw.ogg", 50, 0)
			on = 1
			icon_state = icon_state_null
			timer_detector = 0
			if(!kostil)
				Scan()
	else
		playsound(user, "sound/stalker/detector/detector_draw.ogg", 50, 0)
		on = 0
		cooldown = world.time
		stop()

/obj/item/device/detector/proc/Scan()
	kostil = 1

	if(timer_detector >= 75)
		kostil = 0
		on = 0
		stop()
		return

	if(!on)
		kostil = 0
		return

	if(src.loc && isliving(src.loc))
		user = src.loc

	if(!user || !user.client)
		kostil = 0
		on = 0
		stop()
		return

	if(user.r_hand != src && user.l_hand != src)
		kostil = 0
		on = 0
		stop()
		return

	var/old_dist = min_dist
	min_dist = 8
	target = null

	for(var/obj/item/weapon/artifact/a in range(7, user))
		if(level_s >= a.level_s)
			arts += a
			if(get_dist(user, a) < min_dist)
				min_dist = get_dist(user, a)
				target = a

	if(min_dist == 0)
		min_dist = 1

	for (var/obj/item/weapon/artifact/a in arts)
		if(a in range(1, user))
			if(isnull(a.phantom) && a.invisibility != 0)
				user.handle_artifact(a)
		else
			if(!isnull(a.phantom))
				arts -= a
				qdel(a.phantom)
				a.phantom = null

	if(old_dist == min_dist)
		timer_detector++
	else
		timer_detector = 0

	sleep(2 * min_dist)

	if(!on)
		kostil = 0
		stop()
		return

	if(!target)
		kostil = 0
		Scan()
		return

	dir = get_dir(user, target)
	playsound(user, "sound/stalker/detector/contact_1.ogg", 50, 0)
	icon_state = icon_state_active

	sleep(1)

	if(!on)
		kostil = 0
		stop()
		return

	icon_state = icon_state_null

	kostil = 0
	Scan()
	return

/obj/item/device/detector/dropped(mob/user)
	. = ..()
	on = 0
	stop()

/obj/item/device/detector/proc/stop()
	timer_detector = 0
	target = null
	icon_state = icon_state_inactive
	src.user = null
	//SSobj.processing.Remove(src)

	for (var/obj/item/weapon/artifact/a in arts)
		if(a.invisibility != 0)
			if(!isnull(a.phantom))
				qdel(a.phantom)
				a.phantom = null
		arts -= a

/mob/living/carbon/proc/handle_artifact(var/obj/item/weapon/artifact/a)
	//a.phantom = new /obj/effect/fakeart(a, src)
	a.phantom = PoolOrNew(/obj/effect/fakeart, a, src)
	src << a.phantom.currentimage

/obj/effect/fakeart
	icon = null
	icon_state = null
	name = ""
	desc = ""
	density = 0
	anchored = 1
	opacity = 0
	layer = 3.5
	plane = GAME_PLANE
	var/image/currentimage = null
	var/image/up
	var/obj/item/weapon/artifact/my_target = null

/obj/effect/fakeart/New(var/obj/item/weapon/artifact/a)
	..()
	name = a.name
	desc = a.desc
	loc = a.loc
	my_target = a
	up = image(a)
	currentimage = new /image(up,src)
/*
/obj/effect/fakeart/Destroy()
	..()
	return QDEL_HINT_PUTINPOOL
*/
/obj/effect/fakeart/attack_hand(mob/user)
	if(user.stat || user.restrained() || !Adjacent(user) || user.stunned || user.weakened || user.lying)
		return

	if(user.get_active_hand() != null) // Let me know if this has any problems -Yota
		return

	user.UnarmedAttack(my_target)
	my_target.invisibility = 0

	if(!istype(user, /mob/living/carbon/human))
		qdel(src)
		spawned_artifacts.Remove(my_target)
		return

	var/mob/living/carbon/human/H = user

	if(!H.wear_id)
		qdel(src)
		spawned_artifacts.Remove(my_target)
		return

	if(!istype(H.wear_id, /obj/item/device/stalker_pda))
		qdel(src)
		spawned_artifacts.Remove(my_target)
		return

	var/datum/data/record/sk = find_record("sid", H.sid, data_core.stalkers)
	//var/obj/item/device/stalker_pda/KPK = H.wear_id

	if(!sk)
		qdel(src)
		spawned_artifacts.Remove(my_target)
		return

	sk.fields["rating"] += (2 ** my_target.level_s) * 50

	qdel(src)
	spawned_artifacts.Remove(my_target)
	return