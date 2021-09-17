/datum/job/ecologist
	title = "Ecologist"
	faction_s = "Ecologists"
	total_positions = 3
	locked = 1
	spawn_positions = 3
	supervisors = "Chief Ecologist"
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/ecologist
	real_rank = "Private"

/datum/outfit/job/ecologist
	name = "Ecologist"
	faction_s = "Ecologists"

/datum/outfit/job/ecologist/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	suit = pick(/obj/item/clothing/suit/toggle/labcoat/ecologist_blue, /obj/item/clothing/suit/toggle/labcoat/ecologist_green, /obj/item/clothing/suit/toggle/labcoat/ecologist_orange, /obj/item/clothing/suit/toggle/labcoat/ecologist_purple)
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/storage/belt/stalker/artifact_belt/small
	back = /obj/item/weapon/storage/backpack/satchel/stalker
	l_pocket = /obj/item/device/flashlight/seclite
	r_pocket = /obj/item/device/radio
	suit_store = null
	backpack_contents = list(/obj/item/device/detector/blink = 1,
							/obj/item/device/geiger_counter = 1,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 1,
							/obj/item/weapon/kitchen/knife/hatchet = 1,
							/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x18fort = 1)
	faction_s = "Ecologists"

/datum/outfit/ecologist  // For select_equipment
	name = "Ecologist"
	head = null
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	suit = /obj/item/clothing/suit/toggle/labcoat/ecologist_blue
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/black
	id = /obj/item/device/stalker_pda
	belt = /obj/item/weapon/storage/belt/stalker/artifact_belt/small
	back = /obj/item/weapon/storage/backpack/satchel/stalker
	l_pocket = /obj/item/device/flashlight/seclite
	r_pocket = /obj/item/device/radio
	suit_store = null
	backpack_contents = list(/obj/item/device/detector/blink = 1,
							/obj/item/device/geiger_counter = 1,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 1,
							/obj/item/weapon/kitchen/knife/hatchet = 1,
							/obj/item/weapon/gun/projectile/automatic/pistol/fort12 = 1,
							/obj/item/ammo_box/magazine/stalker/m9x18fort = 1)
	faction_s = "Ecologists"

/datum/job/chief_ecologist
	title = "Chief Ecologist"
	faction_s = "Ecologists"
	total_positions = 2
	locked = 1
	spawn_positions = 1
	selection_color = "#601919"
	whitelist_only = 1
	limit_per_player = 1
	activated = 1
	outfit = /datum/outfit/job/chief_ecologist
	real_rank = "Captain"

/datum/job/chief_ecologist
	title = "Chief Ecologist"
	faction_s = "Ecologists"

/datum/outfit/job/chief_ecologist/pre_equip(mob/living/carbon/human/H)
	..()
	head = null
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/color/black
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/satchel/stalker
	suit_store = null
	shoes = /obj/item/clothing/shoes/laceup
	mask = /obj/item/clothing/mask/cigarette
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x18fort = 1,
							/obj/item/device/detector/blink = 1,
							/obj/item/weapon/kitchen/knife/hatchet = 1,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 3,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	l_pocket = /obj/item/device/flashlight/seclite
	r_pocket = /obj/item/device/radio
	faction_s = "Ecologists"

/datum/outfit/job/chief_ecologist // For select_equipment
	name = "Chief Ecologist"
	head = null
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	ears = null
	belt = /obj/item/weapon/gun/projectile/automatic/pistol/fort12
	gloves = /obj/item/clothing/gloves/color/latex
	id = /obj/item/device/stalker_pda
	back = /obj/item/weapon/storage/backpack/satchel/stalker
	suit_store = null
	shoes = /obj/item/clothing/shoes/laceup
	mask = /obj/item/clothing/mask/cigarette
	backpack_contents = list(/obj/item/ammo_box/magazine/stalker/m9x18fort = 1,
							/obj/item/device/detector/blink = 1,
							/obj/item/weapon/kitchen/knife/hatchet = 1,
							/obj/item/weapon/reagent_containers/pill/stalker/aptechka/scientific = 3,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka/kazaki = 1)
	l_pocket = /obj/item/device/flashlight/seclite
	r_pocket = /obj/item/device/radio
	faction_s = "Ecologists"