/datum/job/clear_sky
	title = "Clear Sky Soldier"
	faction = "Station"
	faction_s = "Clear Sky"
	total_positions = 3
	spawn_positions = 3
	supervisors = "Clear Sky Lieutenant"
	selection_color = "#003D06"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	outfit = /datum/outfit/job/clear_sky

/datum/outfit/job/clear_sky
	name = "Clear Sky Soldier"
	faction_s = "Clear Sky"

/datum/outfit/job/clear_sky/pre_equip(mob/living/carbon/human/H)
	uniform = /obj/item/clothing/under/color/switer/dark
	suit = /obj/item/clothing/suit/hooded/kozhanka/clear_sky
	suit_store = /obj/item/weapon/gun/projectile/automatic/pistol/tt
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1, /obj/item/ammo_box/magazine/stalker/tt = 2)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/clear_sky  // For select_equipment
	name = "Clear Sky Soldier"
	faction_s = "Clear Sky"
	suit = /obj/item/clothing/suit/hooded/kozhanka/clear_sky
	suit_store = /obj/item/weapon/gun/projectile/automatic/pistol/tt
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	back = /obj/item/weapon/storage/backpack/stalker
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							/obj/item/ammo_box/magazine/stalker/tt = 2)

/datum/outfit/clear_sky/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/color/switer/dark
	ears = null
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
