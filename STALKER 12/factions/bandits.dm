/**
 * Bandits faction file.
 *
 * Bandit together is the essence of BYOND.
**/

/** Jobs **/

// Bandit soldier
/datum/job/bandit_soldier
	title = "Bandit"
	faction_s = "Bandits"
	faction = "Station"
	total_positions = -1
	spawn_positions = 5
	supervisors = "Bandit Leader"
	selection_color = "#000000"
	access = list()
	minimal_access = list()
	whitelist_only = 0
	limit_per_player = 2
	outfit = /datum/outfit/job/bandit

// Bandit leader
/datum/job/bandit_leader
	title     = "Bandit Leader"
	faction_s = "Bandits"
	faction = "Station"
	whitelist_only = 0
	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	selection_color = "#000000"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/bandit_leader

// Bandit trader
/datum/job/bandit_trader
	title     = "Bandit Barman"
	faction_s = "Bandits"
	faction   = "Station"

	total_positions = 1
	spawn_positions = 1
	supervisors = ""
	selection_color = "#000000"
	access = list()
	minimal_access = list()
	whitelist_only = 0
	limit_per_player = 3
	outfit = /datum/outfit/job/bandit_trader

/** Outfits **/

// Bandit soldier
/datum/outfit/job/bandit
	name = "Bandit"
	faction_s = "Bandits"

/datum/outfit/job/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	backpack_contents = list()
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm
	l_pocket = /obj/item/weapon/stalker/bolts

/datum/outfit/job/bandit_leader
	name = "Leader"
	faction_s = "Bandits"

/datum/outfit/job/bandit_leader/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka/coat
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/gun/projectile/automatic/mp5
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 1,
							/obj/item/ammo_box/stalker/b9x19 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x19mp5 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x18pm = 1,
							/obj/item/device/flashlight/seclite = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

/datum/outfit/job/bandit_trader
	name = "Bandit Barman"
	faction_s = "Bandits"

/datum/outfit/job/bandit_trader/pre_equip(mob/living/carbon/human/H)
	uniform = UNIFORMPICK
	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	head = /obj/item/clothing/head/bowler
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c5000 = 3,
						/obj/item/ammo_box/stalker/b12x70 = 1,
						/obj/item/device/flashlight/seclite = 1)
	l_pocket = /obj/item/weapon/reagent_containers/food/snacks/stalker/konserva/shproti
	r_pocket = /obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki

/datum/outfit/bandit  // For select_equipment
	name = "Bandit"
	faction_s = "Bandits"

	suit = /obj/item/clothing/suit/hooded/kozhanka/banditka
	ears = null
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/kitchen/knife/tourist
	gloves = /obj/item/clothing/gloves/fingerless
	shoes = /obj/item/clothing/shoes/jackboots/warm
	mask = /obj/item/clothing/mask/balaclava
	back = /obj/item/weapon/storage/backpack/stalker/tourist
	backpack_contents = list(/obj/item/stack/spacecash/c1000 = 1, /obj/item/ammo_box/magazine/stalker/m9x18pm =  2)
	r_pocket = /obj/item/weapon/gun/projectile/automatic/pistol/pm

/datum/outfit/bandit/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = UNIFORMPICK
	l_pocket = pick(/obj/item/weapon/reagent_containers/food/snacks/stalker/kolbasa,/obj/item/stack/medical/gauze/bint,/obj/item/weapon/reagent_containers/food/snacks/stalker/baton)
