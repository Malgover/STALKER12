/datum/job/monolith_soldier
	title = "Monolith Soldier"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Monolith Preacher"
	selection_color = "#601919"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	whitelist_only = 1
	activated = 1
	limit_per_player = 1
	outfit = /datum/outfit/job/monolith_soldier// /datum/outfit/job/duty

/datum/outfit/job/monolith_soldier
	name = "Monolith Soldier"
	faction_s = "Monolith"

/datum/outfit/job/monolith_soldier/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/white/monolith
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/sigsg550
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = pick(/obj/item/clothing/mask/balaclava, /obj/item/clothing/mask/gas/stalker/respirator)
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m556x45 = 3,
							/obj/item/device/flashlight/seclite = 1)
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/outfit/monolith_soldier  // For select_equipment
	name = "Monolith Soldier"
	head = null
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	ears = null
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/stalker/civilian
	suit_store = /obj/item/weapon/gun/projectile/automatic/berettam38
	shoes = /obj/item/clothing/shoes/jackboots/warm
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/berettam38 = 1,
							/obj/item/device/flashlight/seclite = 1)
	faction_s = "Monolith"

/datum/job/monolith_sniper
	title = "Monolith Sniper"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 2
	locked = 1
	spawn_positions = 2
	supervisors = "Monolith Preacher"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 2
	activated = 1
	outfit = /datum/outfit/job/monolith_sniper
	real_rank = "Corporal"

/datum/outfit/job/monolith_sniper
	name = "Monolith Sniper"
	faction_s = "Monolith"

/datum/outfit/job/monolith_sniper/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/steel
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kombez/monolith
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/shotgun/boltaction/enfield
	backpack_contents = list(/obj/item/ammo_box/stalker/cl762x51 = 2,
							/obj/item/device/flashlight/seclite = 1,
							/obj/item/weapon/attachment/scope/rifle = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)

/datum/job/monolith_preacher
	title = "Monolith Preacher"
	faction_s = "Monolith"
	faction = "Station"
	total_positions = 1
	locked = 1
	spawn_positions = 1
	supervisors = "Monolith"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/monolith_preacher
	real_rank = "Lieutenant"

/datum/outfit/job/monolith_preacher
	name = "Monolith Preacher"
	faction_s = "Monolith"

/datum/outfit/job/monolith_preacher/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/sealed/monolith
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	id = /obj/item/device/stalker_pda
	suit_store = /obj/item/weapon/gun/projectile/automatic/gp37
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m556x45 = 2,
							/obj/item/device/flashlight/seclite = 1)
	shoes = /obj/item/clothing/shoes/jackboots/warm
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)