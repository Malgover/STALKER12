/*
Assistant
*/
/datum/job/military
	title = "Military"
	faction_s = "Military"
//	flag = ASSISTANT
//	department_flag = CIVILIAN
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "Military Officer"
	selection_color = "#2E8B57"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/military

/datum/job/military_spetsnaz
	title = "Military Spetsnaz"
	faction_s = "Military"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	supervisors = "Military Captain"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/military/military_spetsnaz
	real_rank = "Lieutenant"

/datum/job/military_spetsnaz
	title = "Military Spetsnaz"
	faction_s = "Military"

/datum/outfit/job/military/military_spetsnaz/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/spheram
	suit = /obj/item/clothing/suit/berill
	gloves = /obj/item/clothing/gloves/fingerless
	suit_store = /obj/item/weapon/gun/projectile/automatic/gp37
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m556x45 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1)

/datum/outfit/job/military
	name = "Military Soldier"

/datum/outfit/job/military/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	faction_s = "Military"

/datum/outfit/military  // For select_equipment
	name = "Military Soldier"
	head = null
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b545 = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1)
	l_pocket = /obj/item/weapon/stalker/bolts
	r_pocket = /obj/item/device/radio
	faction_s = "Military"

/datum/outfit/military/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/lolg
	suit = /obj/item/clothing/suit/army
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket =/obj/item/weapon/stalker/bolts

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
	outfit = /datum/outfit/job/military/militaryofficer
	real_rank = "Captain"

/datum/job/militaryofficer
	title = "Military Captain"
	faction_s = "Military"

/datum/outfit/job/military/militaryofficer/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = pick(/obj/item/clothing/mask/balaclava, /obj/item/clothing/mask/cigarette)
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/weapon/lighter = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Military"

/datum/outfit/job/military/militaryofficer // For select_equipment
	name = "Military Captain"
	head = /obj/item/clothing/head/beret_ua
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/army
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	suit_store = /obj/item/weapon/gun/projectile/automatic/ak74
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	backpack_contents = list(/obj/item/ammo_box/stalker/b545ap = 1,
							/obj/item/ammo_box/magazine/stalker/m545 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	r_pocket = /obj/item/device/radio
	l_pocket = /obj/item/ammo_box/magazine/stalker/m9x18fort
	faction_s = "Military"