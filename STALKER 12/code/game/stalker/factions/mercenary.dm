/datum/job/mercenary
	title = "Mercenary"
	faction_s = "Mercenaries"
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = ""
	selection_color = "#2e708b"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	limit_per_player = 4
	outfit = /datum/outfit/job/mercenary

/datum/outfit/job/mercenary
	name = "Mercenary"
	faction_s = "Mercenaries"

/datum/outfit/job/mercenary/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/mp5
	back = /obj/item/weapon/storage/backpack/stalker/civilian
	suit_store = /obj/item/weapon/gun/projectile/automatic/mp5
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 2)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa

/datum/outfit/mercenary  // For select_equipment
	name = "Mercenary"

	head = null
	mask = /obj/item/clothing/mask/gas/stalker/mercenary
	uniform = /obj/item/clothing/under/color/switer
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/civilian
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 2,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/army = 1,
							/obj/item/device/flashlight/seclite = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa
	faction_s = "Mercenaries"

/datum/outfit/mercenary/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	suit_store = pick(/obj/item/weapon/gun/projectile/automatic/mp5, /obj/item/weapon/gun/projectile/shotgun/chaser)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/job/mercenary_veteran
	title = "Mercenary Veteran"
	faction_s = "Mercenaries"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = -1
	supervisors = ""
	selection_color = "#2e708b"
	whitelist_only = 1
	limit_per_player = 4
	outfit = /datum/outfit/job/mercenary_veteran
	real_rank = "Lieutenant"

/datum/outfit/job/mercenary_veteran
	name = "Mercenary Veteran"
	faction_s = "Mercenaries"

/datum/outfit/job/mercenary_veteran/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/assaultmerc
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/mercenary
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/civilian
	suit_store = /obj/item/weapon/gun/projectile/automatic/vintorez
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/device/flashlight/seclite = 1,
							/obj/item/ammo_box/magazine/stalker/sp9x39vint = 2)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa