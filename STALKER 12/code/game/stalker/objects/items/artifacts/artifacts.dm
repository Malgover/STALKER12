#define IU238 	1
#define IPU238 	2
#define	IPO210	4

/isotope
	var/name
	var/not_modified_ka = 0.0

/isotope/u238
	name = "Uranium 238"
	not_modified_ka = 0.59596

/isotope/pu238
	name = "Plutonium 238"
	not_modified_ka = 0.27030

/isotope/po210
	name = "Polonium 210"
	not_modified_ka = 0.44015

/obj/item/weapon/artifact
	icon = 'icons/stalker/artifacts.dmi'
	var/isotope/isotope_base = null
	var/capacity = 0
	var/charge = 0
	var/list/art_armor = list()
	var/radiation = 2
	var/waspicked = 0
	var/level_s = 1
	w_class = 2
	var/obj/effect/fakeart/phantom = null

/obj/item/weapon/artifact/proc/Think(mob/user)
	if(!charge) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		if(istype(loc, user))
			mob.radiation = max(0, mob.radiation + radiation)

		else if(istype(loc, /obj/item/weapon/storage))
			var/obj/item/weapon/storage/S = loc
			if(radiation > 0)
				mob.radiation = max(0, mob.radiation + (radiation*(1-S.radiation_protection)))
			else
				mob.radiation = max(0, mob.radiation + radiation)

		return art_armor
	return 0


/obj/item/weapon/artifact/New()
	isotope_base = pick(/isotope/u238,
						/isotope/pu238,
						/isotope/po210)
	capacity = rand(1000, 10000)
	charge = capacity
	//invisibility = 100

/obj/item/weapon/artifact/pickup(mob/user)
	..()
	if(invisibility)
		invisibility = 0

	/////////////////////////////////////////Artifacts/////////////////////////////////////////
/obj/item/weapon/artifact/meduza
	name = "meduza"
	desc = "This gravitational artifact attracts and absorbs radioactive particles, reducing the effects of radiation on the body. Very common in the Zone and is unofficially used outside the Zone for treating acute radiation sickness in exceptional circumstances."
	eng_desc = "This gravitational artifact attracts and absorbs radioactive particles, reducing the effects of radiation on the body. Very common in the Zone and is unofficially used outside the Zone for treating acute radiation sickness in exceptional circumstances."
	icon_state = "meduza"
	art_armor = list()
	radiation = -2
	level_s = 1

/obj/item/weapon/artifact/stoneflower
	name = "stone flower"
	desc = "Born in gravitional anomalies. This artifact is found in only a few areas of the Zone. The bits of metallic compounds create a beautiful light play."
	eng_desc = "Born in gravitional anomalies. This artifact is found in only a few areas of the Zone. The bits of metallic compounds create a beautiful light play."
	icon_state = "stoneflower"
	art_armor = list(bullet = 10)
	radiation = 2
	level_s = 2

/obj/item/weapon/artifact/nightstar
	name = "night star"
	desc = "This wonderful artifact is formed by gravitional anomalies anomaly. The use of the artifact demands the neutralization of deadly radiation. Expensive and rare."
	eng_desc = "This wonderful artifact is formed by gravitional anomalies anomaly. The use of the artifact demands the neutralization of deadly radiation. Expensive and rare."
	icon_state = "nightstar"
	art_armor = list(bullet = 20)
	radiation = 3
	level_s = 3

/obj/item/weapon/artifact/soul
	name = "soul"
	desc = "A unique organic artifact with properties just as unique. Somehow it increases the body's overall recovery rate from damage of any kind, without accelerating the accumulation of toxins. Thanks to its effects and attractive appearance, this artifact is a valuable collector's item. Emits radiation."
	eng_desc = "A unique organic artifact with properties just as unique. Somehow it increases the body's overall recovery rate from damage of any kind, without accelerating the accumulation of toxins. Thanks to its effects and attractive appearance, this artifact is a valuable collector's item. Emits radiation."
	icon_state = "soul"
	art_armor = list()
	radiation = 2
	level_s = 4

/obj/item/weapon/artifact/soul/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustBruteLoss(-1)
	return 1

	/////////////////////////////////////////Artifacts/////////////////////////////////////////

/obj/item/weapon/artifact/flash
	name = "flash"
	desc = "This electrostatic artifact is a powerful absorbent of electricity, which it later discharges. Flash is capable of protecting its bearer from electric shocks of up to 5,000 volts. Emits radiation."
	eng_desc = "This electrostatic artifact is a powerful absorbent of electricity, which it later discharges. Flash is capable of protecting its bearer from electric shocks of up to 5,000 volts. Emits radiation."
	icon_state = "flash"
	art_armor = list(energy = 10)
	radiation = 1
	level_s = 1

/obj/item/weapon/artifact/moonlight
	name = "moonlight"
	desc = "Degenerate case of the activity of the Electro anomaly. It seems that such a wonderful round form is created when the anomaly is subjected to thermal influences. Expensive artifact."
	eng_desc = "Degenerate case of the activity of the Electro anomaly. It seems that such a wonderful round form is created when the anomaly is subjected to thermal influences. Expensive artifact."
	icon_state = "moonlight"
	art_armor = list(energy = 20)
	radiation = 2
	level_s = 2

/obj/item/weapon/artifact/pustishka
	name = "pustishka"
	desc = "An artefact which emits some radiation. Not much is known about this one, it is best to bring it to the proper authorities for verification."
	icon_state = "pustishka"
	art_armor = list(energy = 30)
	radiation = 2
	level_s = 3

/obj/item/weapon/artifact/battery
	name = "battery"
	desc = "The composition of this artifact includes electrostatic elements, but scientists have yet to identify the exact physical conditions required for its formation. The artifact is popular in the Zone and valued by its residents and visitors for its energizing properties, although it can tire the body out through prolonged use. Doesn't emit radiation."
	eng_desc = "The composition of this artifact includes electrostatic elements, but scientists have yet to identify the exact physical conditions required for its formation. The artifact is popular in the Zone and valued by its residents and visitors for its energizing properties, although it can tire the body out through prolonged use. Doesn't emit radiation."
	icon_state = "battery"
	art_armor = list(energy = 30)
	level_s = 4

	//////////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/artifact/droplet
	name = "droplet"
	desc = "Formed in the Burner anomaly at high temperatures. From the exterior looks like a tear-like shade compound with a glossy surface, covered in cracks."
	eng_desc = "Formed in the Burner anomaly at high temperatures. From the exterior looks like a tear-like shade compound with a glossy surface, covered in cracks."
	icon_state = "droplet"
	art_armor = list(rad = 10)
	radiation = -1
	level_s = 1
/*
/obj/item/weapon/artifact/droplet/Think(user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustStaminaLoss(1.8)
	return 1
*/
/obj/item/weapon/artifact/fireball
	name = "fireball"
	desc = "Crystallizes in the anomaly Burner. Fights well with radioactivity, though the heightened rate of energy exchange wears out the muscles of the moving apparatus. Won't be able to run for long. Artifact emits heat."
	eng_desc = "Crystallizes in the anomaly Burner. Fights well with radioactivity, though the heightened rate of energy exchange wears out the muscles of the moving apparatus. Won't be able to run for long. Artifact emits heat."
	icon_state = "fireball"
	art_armor = list(rad = 15)
	radiation = -2
	level_s = 2

/obj/item/weapon/artifact/crystal
	name = "crystal"
	desc = "Is created when heavy metals fall into the Burner anomaly. This artifact eliminates radiation wonderfully. It is highly valued by stalkers and hard to find."
	eng_desc = "Is created when heavy metals fall into the Burner anomaly. This artifact eliminates radiation wonderfully. It is highly valued by stalkers and hard to find."
	icon_state = "crystal"
	art_armor = list()
	radiation = -5
	level_s = 4

/obj/item/weapon/artifact/maminibusi
	name = "mama's beads"
	desc = "Much about this artifact remains a complete mystery to scientists. At the same time, it is known for certain that emissions produced by pulses in its thicker sections force blood in open wounds to clot quicker, forming a protective scab. One of the most noticeable effects of this artifact is the increased speed of wound healing. Emits radiation."
	eng_desc = "Much about this artifact remains a complete mystery to scientists. At the same time, it is known for certain that emissions produced by pulses in its thicker sections force blood in open wounds to clot quicker, forming a protective scab. One of the most noticeable effects of this artifact is the increased speed of wound healing. Emits radiation."
	icon_state = "mamini_busi"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/weapon/artifact/maminibusi/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-1)
	return 1


	/////////////////////////////////////////Artifacts/////////////////////////////////////////

/obj/item/weapon/artifact/stone_blood
	name = "stone blood"
	desc = "A reddish formation of compressed and fossilized plants, soil and animal debris. Can partially neutralize chemical poisons. Emits radiation."
	eng_desc = "A reddish formation of compressed and fossilized plants, soil and animal debris. Can partially neutralize chemical poisons. Emits radiation."
	icon_state = "stone_blood"
	art_armor = list(bio = 10)
	radiation = 1
	level_s = 1

/obj/item/weapon/artifact/bubble
	name = "bubble"
	desc = "A compound of several hollow organic formations, this artifact emits a gaseous substance that can neutralize radioactive particles inside the body without harming it. Because of its effectiveness, this artifact is in great demand."
	eng_desc = "A compound of several hollow organic formations, this artifact emits a gaseous substance that can neutralize radioactive particles inside the body without harming it. Because of its effectiveness, this artifact is in great demand."
	icon_state = "bubble"
	art_armor = list()
	radiation = -3
	level_s = 2

/obj/item/weapon/artifact/mica
	name = "mica"
	desc = "Anomaly \"Fruit Punch\" is able to create such an artifact at the rarest, most extreme collection of physical conditions. The result is a semi-transparent, hard object. A rare and expensive artifact."
	eng_desc = "Anomaly \"Fruit Punch\" is able to create such an artifact at the rarest, most extreme collection of physical conditions. The result is a semi-transparent, hard object. A rare and expensive artifact."
	icon_state = "mica"
	art_armor = list(laser = 10, bio = 10)
	radiation = 3
	level_s = 3

/obj/item/weapon/artifact/mica/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		if(!H.bleedsuppress) //so you can't stack bleed suppression
			H.suppress_bloodloss(1)

			if(H.stat != DEAD && H.bodytemperature >= 170)

				var/blood_volume = round(H.vessel.get_reagent_amount("blood"))
				if(blood_volume < 560 && blood_volume)

					var/datum/reagent/blood/B = locate() in H.vessel.reagent_list
					if(B)
						if(B.data["donor"] != src) //If it's not theirs, then we look for theirs
							for(var/datum/reagent/blood/D in H.vessel.reagent_list)
								if(D.data["donor"] == src)
									B = D
									break

						B.volume += 0.5
	return 1

/obj/item/weapon/artifact/firefly
	name = "firefly"
	desc = "Firefly interacts with fields unknown to science, considerably speeding up regeneration of tissue and organs in living beings, as well as normalizing metabolic processes. This artifact can literally get a badly wounded stalker back on his feet in seconds. Unfortunately, Firefly is extremely rare. Emits radiation."
	eng_desc = "Firefly interacts with fields unknown to science, considerably speeding up regeneration of tissue and organs in living beings, as well as normalizing metabolic processes. This artifact can literally get a badly wounded stalker back on his feet in seconds. Unfortunately, Firefly is extremely rare. Emits radiation."
	icon_state = "firefly"
	art_armor = list()
	radiation = 5
	level_s = 4

/obj/item/weapon/artifact/firefly/Think(mob/user)
	if(!..()) return 0
	if(istype(user, /mob/living/carbon))
		var/mob/living/carbon/mob = user
		mob.adjustFireLoss(-0.5)
		mob.adjustBruteLoss(-0.5)
	return 1

/obj/item/weapon/storage/belt/stalker
	name = "artifact belt"
	eng_desc = "A belt specifically designed with framework necessary for the safe keeping and use of artifacts. This one is relatively large."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"
	max_w_class = 3
	storage_slots = 5

/obj/item/weapon/storage/belt/stalker/artifact_belt/small
	name = "small artifact belt"
	eng_desc = "A belt specifically designed with framework necessary for the safe keeping and use of artifacts. This one is relatively small."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "fannypack_black"
	item_state = "artifacts"
	storage_slots = 2

/obj/item/weapon/storage/belt/stalker/artifact_belt
	var/thinkrate = 100
	can_hold = list(
		/obj/item/weapon/artifact
		/*

		/obj/item/weapon/artifact/meduza,
		/obj/item/weapon/artifact/stoneflower,
		/obj/item/weapon/artifact/nightstar,
		/obj/item/weapon/artifact/soul,


		/obj/item/weapon/artifact/flash,
		/obj/item/weapon/artifact/moonlight,
		/obj/item/weapon/artifact/battery,
		/obj/item/weapon/artifact/pustishka,


		/obj/item/weapon/artifact/droplet,
		/obj/item/weapon/artifact/fireball,
		/obj/item/weapon/artifact/crystal,
		/obj/item/weapon/artifact/maminibusi,


		/obj/item/weapon/artifact/stone_blood,
		/obj/item/weapon/artifact/bubble,
		/obj/item/weapon/artifact/mica,
		/obj/item/weapon/artifact/firefly
		*/

		)

/obj/item/weapon/storage/belt/stalker/artifact_belt/proc/Think(mob/user)
	for(var/obj/item/weapon/artifact/A in contents)
		A.Think(user)
	//spawn(thinkrate)
	//	Think()
/*
/obj/item/weapon/storage/belt/stalker/artifact_belt/handle_item_insertion(obj/item/W, prevent_warning = 0, mob/user)
	if(..(W, prevent_warning, user) && istype(W, /obj/item/weapon/artifact))
		var/obj/item/weapon/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] += artifact.art_armor[armortype]
		return 1
	return 0

/obj/item/weapon/storage/belt/stalker/artifact_belt/remove_from_storage(obj/item/W, atom/new_location, burn = 0)
	if(..(W, new_location, burn) && istype(W, /obj/item/weapon/artifact))
		var/obj/item/weapon/artifact/artifact = W
		var/mob/living/carbon/mob = loc
		for(var/i=1,i<=artifact.art_armor.len,i++)
			var/armortype = artifact.art_armor[i]
			if(!(armortype in mob.global_armor))
				mob.global_armor += armortype
			mob.global_armor[armortype] -= artifact.art_armor[armortype]
		return 1
	return 0
*/