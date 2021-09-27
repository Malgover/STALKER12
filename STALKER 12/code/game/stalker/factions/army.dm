/datum/job/military_spetsnaz
	title = "Military Spetsnaz"
	faction_s = "Military"
	total_positions = 1
	locked = 1
	spawn_positions = 1
	supervisors = "Military Captain"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/military_spetsnaz
	real_rank = "Lieutenant"

/datum/job/military_spetsnaz
	title = "Military Spetsnaz"
	faction_s = "Military"

/datum/outfit/job/military_spetsnaz/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/spheram
	mask = pick(/obj/item/clothing/mask/balaclava,/obj/item/clothing/mask/skimask)
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/berill
	shoes = /obj/item/clothing/shoes/jackboots/warm
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker
	belt = /obj/item/weapon/kitchen/knife/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/val
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/sp9x39val = 3,
							/obj/item/device/flashlight/seclite = 1,
							/obj/item/weapon/kitchen/knife/tourist,
							/obj/item/weapon/storage/firstaid/stalker/military = 2)

/*
Assistant
*/
/datum/job/military
	title = "Military Soldier"
	faction_s = "Military"
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Military Officer"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	limit_per_player = 1
	outfit = /datum/outfit/job/military

/datum/outfit/job/military
	name = "Military Soldier"

/datum/outfit/job/military/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/bandmil,/obj/item/clothing/head/soviethelmet)
	mask = pick(/obj/item/clothing/mask/balaclava,/obj/item/clothing/mask/skimask)
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/stalker/military = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Military"

/datum/outfit/military  // For select_equipment
	name = "Military Soldier"
	head = /obj/item/clothing/head/soviethelmet
	mask = /obj/item/clothing/mask/balaclava
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/storage/firstaid/stalker/military = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/device/flashlight/seclite
	faction_s = "Military"

/datum/outfit/military/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/lolg
	mask = /obj/item/clothing/mask/balaclava
	suit = /obj/item/clothing/suit/army
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket = /obj/item/device/flashlight/seclite

/datum/job/military_officer
	title = "Military Captain"
	faction_s = "Military"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/military_officer
	real_rank = "Captain"

/datum/job/military_officer
	title = "Military Captain"
	faction_s = "Military"

/datum/outfit/job/military_officer/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/abakan
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = pick(/obj/item/clothing/mask/balaclava,/obj/item/clothing/mask/skimask)
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/device/flashlight/seclite = 1,
							/obj/item/weapon/storage/firstaid/stalker/military = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Military"

/datum/outfit/job/military_officer // For select_equipment
	name = "Military Captain"
	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/abakan
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/device/flashlight/seclite = 1,
							/obj/item/weapon/storage/firstaid/stalker/military = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Military"