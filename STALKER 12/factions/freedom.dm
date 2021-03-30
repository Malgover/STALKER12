/**
 * Freedom faction file.
 *
 * It smells like cannabis and freedom.
**/

/** Jobs **/

// Freedom soldier
/datum/job/freedom_soldier
	title = "Freedom Soldier"
	faction_s = "Freedom"
	whitelist_only = 0
	total_positions = 6
	spawn_positions = 6
	supervisors = "Chief Anarchist" // Кто здесь?
	selection_color = "#3C8C3C"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/freedom_soldier

// Svoboda leader
/datum/job/freedom_leader
	title = "Freedom Chief Anarchist" // This guy.
	faction_s = "Freedom"
	whitelist_only = 0
	total_positions = 1
	spawn_positions = 1
	selection_color = "#3C8C3C"
	outfit = /datum/outfit/job/freedom_leader
	real_rank = "Lieutenant"

/** Outfits **/

// Svoboda soldier
/datum/outfit/job/freedom_soldier
	name = "Freedom"
	faction_s = "Freedom"

/datum/outfit/job/freedom_soldier/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/mp5
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/stalker/b9x19 = 1)
	r_pocket = /obj/item/weapon/stalker/bolts
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

// Svoboda leader
/datum/outfit/job/freedom_leader
	name = "Freedom Chief Anarchist"
	faction_s = "Freedom"

/datum/outfit/job/freedom_leader/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/veter
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/tpc301
	backpack_contents = list(/obj/item/ammo_box/stalker/b55645 = 1, /obj/item/ammo_box/magazine/stalker/m556x45 = 2, /obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa, /obj/item/weapon/reagent_containers/food/snacks/stalker/baton)