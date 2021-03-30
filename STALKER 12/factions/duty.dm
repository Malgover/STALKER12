/**
 * Duty faction file.
 *
 * I think this file hates itself out of duty.
**/

/** Jobs **/

// Duty recruit
/datum/job/duty_recruit/

// Duty soldier
/datum/job/duty_soldier
	title = "Duty Soldier"
	faction_s = "Duty"
	faction = "Station"
	whitelist_only = 0
	total_positions = 8
	spawn_positions = 8
	supervisors = "Major" // Bound to slip
	selection_color = "#CC0000"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/duty_soldier

// Duty leader
/datum/job/duty_leader
	title = "Duty Major"
	faction_s = "Duty"
	faction = "Station"
	whitelist_only = 0
	total_positions = 1
	spawn_positions = 1
	selection_color = "#CC0000"
	outfit = /datum/outfit/job/duty_leader
	real_rank = "Lieutenant"

/** Outfits **/

// Duty soldier
/datum/outfit/job/duty_soldier
	name = "Duty Major"
	faction_s = "Duty"

/datum/outfit/job/duty_soldier/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/kiparis
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b9x18 = 1, /obj/item/device/flashlight/seclite = 1)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
	r_pocket = /obj/item/ammo_box/magazine/stalker/kiparis

// Duty leader
/datum/outfit/job/duty_leader
	name = "Duty Major"
	faction_s = "Duty"

/datum/outfit/job/duty_leader/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/ps5m
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/aksu74
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/** Sklad **/

/datum/job/barman2
	title = "Barman2"
	faction_s = "Loners"
	locked = 1
	faction = "Station"
	total_positions = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/barman2

/datum/outfit/job/barman2
	name = "Barman"
	faction_s = "Traders"

/datum/outfit/job/barman2/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/jacket/sidor
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/cora
	id = /obj/item/device/stalker_pda
	shoes = /obj/item/clothing/shoes/sneakers/black
	back = null