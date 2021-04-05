/datum/job/mystical/Renegade
	title = "Renegade"
	faction = "Station"
	faction_s = "Renegades"
	total_positions = 2
	spawn_positions = 2
	supervisors = ""
	selection_color = "#003D06"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 0
	outfit = /datum/outfit/job/renegade

/datum/outfit/job/Renegade
	name = "Renegade"

/datum/outfit/job/renegade/pre_equip(mob/living/carbon/human/H)
	uniform = /obj/item/clothing/under/syndicate/tacticool
	suit = /obj/item/clothing/suit/hooded/kozhanka/renegadecoat
	suit_store = /obj/item/weapon/gun/projectile/automatic/mini_uzi
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/satchel/stalker/civilian
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/uzim9mm = 2)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/renegade  // For select_equipment
	name = "Renegade"
	faction_s = "Renegade"
	suit = /obj/item/clothing/suit/hooded/kozhanka/renegadecoat
	suit_store = /obj/item/weapon/gun/projectile/automatic/mini_uzi
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/satchel/stalker/civilian
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1,
							/obj/item/ammo_box/magazine/uzim9mm = 2)

/datum/outfit/renegade/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = /obj/item/clothing/under/syndicate/tacticool
	ears = null
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
