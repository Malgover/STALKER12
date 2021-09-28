/*
/obj/item/clothing/head/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/
/obj/item/clothing/head/steel
	name = "Steel helmet"
	eng_desc = "A simple steel helmet which is designed to protect the user from blunt force trauma, sharpnel, and small calibre bullets. It is heavy and has been worn by many generations, but its better than nothing!"
	icon_state = "steelhelmet"
	item_state = "steelhelmet"
	armor = list(melee = 25, bullet = 40, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, psy = 5)
	flags_cover = 0
	unacidable = 1
	durability = 40
	modifications = list("material_head" = 0)

/obj/item/clothing/head/soviethelmet
	name = "Soviet steel helmet"
	eng_desc = "A simple steel helmet which is designed to protect the user from blunt force trauma, sharpnel, and small calibre bullets."
	icon_state = "soviethelmet"
	item_state = "soviethelmet"
	armor = list(melee = 25, bullet = 40, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, psy = 5)
	flags_cover = 0
	unacidable = 1
	durability = 40
	modifications = list("material_head" = 0)

/obj/item/clothing/head/mob_can_equip(mob/M, slot, disable_warning = 0)
	if(!iscarbon(M))
		return ..()

	var/mob/living/carbon/C = M

	if(slot != slot_head)
		return ..()

	if(!(flags_cover & HEADCOVERSMOUTH))
		return ..()

	if(!(C.wear_mask) || !(istype(C.wear_mask, /obj/item/clothing/mask/gas)))
		return ..()

	return 0

/obj/item/clothing/head/tacticalhelmet
	name = "Tactical helmet"
	desc = "A Western-designed kevlar reinforced helmet complimenting the legendary exosuits of The Zone. It's entirely unknown how such an advanced piece of equipment made it's way into The Zone; All that one needs to know is that there is simply no better alternative for protection!"
	eng_desc = "A Western-designed kevlar reinforced helmet complimenting the legendary exosuits of The Zone. It's entirely unknown how such an advanced piece of equipment made it's way into The Zone; All that one needs to know is that there is simply no better alternative for protection!"
	icon_state = "hardhat0_tactical"
	item_state = "hardhat0_tactical"
	item_color = "tactical"
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list(melee = 50, bullet = 60, laser = 0,energy = 30, bomb = 0, bio = 30, rad = 20, psy = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	unacidable = 1
	durability = 300
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/tacticalhelmet/New()
	nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/head/hardhat/tactical/light
	name = "Light tactical helmet"
	desc = "A Western-designed kevlar helmet that has somehow found it's way into the zone. It provides incredible protection with a light-frame alongside a complimentry suite originally designed to give better situational-awarness to the soldier!"
	eng_desc = "A Western-designed kevlar helmet that has somehow found it's way into the zone. It provides incredible protection with a light-frame alongside a complimentry suite originally designed to give better situational-awarness to the soldier!"
	icon_state = "hardhat0_lighttactical"
	item_state = "hardhat0_lighttactical"
	item_color = "lighttactical"
	flags = BLOCKHAIR
	flags_inv = HIDEEARS|HIDEEYES
	action_button_name = "Toggle Light"
	armor = list(melee = 35, bullet = 50, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0, psy = 5)
	brightness_on = 2 //luminosity when on
	flags_cover = HEADCOVERSEYES
	unacidable = 1
	durability = 200
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/hardhat/tactical/light/New()
	..()
	return

/obj/item/clothing/head/assaultmerc
	name = "Mercenary helmet"
	desc = "A mercenary assault helmet made out of steel with a visor to protect the eyes from shrapnel and low-caliber ammo."
	icon_state = "assaultmerc"
	item_state = "assaultmerc"
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list(melee = 40, bullet = 65, laser = 25,energy = 50, bomb = 0, bio = 0, rad = 0, psy = 5)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	unacidable = 1
	durability = 250
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/gopcap
	name = "gopnik cap"
	desc = "A cap typically worn by gopniks."
	icon_state = "gopcap"
	item_state = "gopcap"
	flags = BLOCKHAIR
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 10, psy = 0)
	unacidable = 1
	durability = 250
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/soft/jacknoircap
	name = "machinist cap"
	icon_state = "jacknoirsoft"
	item_color = "jacknoir"
	item_state = "greysoft"

/obj/item/clothing/head/spheram
	name = "Sphera M12"
	desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphere M12 is normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	eng_desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphere M12 is normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "sphera"
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list(melee = 60, bullet = 65, laser = 0,energy = 35, bomb = 0, bio = 30, rad = 30, psy = 20)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/spheram/New()
	nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/head/skathelmet
	name = "SKAT-M9"
	desc = "An aluminum/titanium helmet with a cloth exterior that comes with pockets for additional steel armor pieces and an armor face mask. Sphere M12 is normally used as part of a combination that includes PSZ series Spetsnaz body armor. Quite popular in the Zone thanks to its respirator and built-in first generation night vision device, as well as providing the maximum head protection possible. Comes with electronics slots."
	icon_state = "helmet_skat"
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list(melee = 75, bullet = 75, laser = 60,burn = 70, bomb = 70, bio = 50, rad = 40, electro = 70, psy = 10)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 1)

/obj/item/clothing/head/skathelmet/New()
	nvg = new /obj/item/nightvision(src)
	..()

/obj/item/clothing/head/petrovichhelmet
	name = "SKOT-M777"
	desc = "This is the SKOT-M777 Helmet."
	icon_state = "helmet_skot"
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	armor = list(melee = 75, bullet = 75, laser = 60,burn = 70, bomb = 70, bio = 50, rad = 40, electro = 70, psy = 50)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/head/beret_ua
	name = "military beret"
	desc = "A beret typically worn by the Ukrainian Military."
	icon_state = "beret_ua"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	strip_delay = 80

/obj/item/clothing/head/bandmil
	name = "military bandana"
	desc = "A dark-green bandana typically worn by the Ukrainian Military."
	icon_state = "bandmil_up"
	armor = list(melee = 0, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	strip_delay = 80

/*
/obj/item/clothing/mask/gas/New()
	..()
	sleep(5)
	if(nvg)
		if(nvg.colour_matrix == NIGHTVISION_MATRIX_I)
			modifications += "visor"
		else if(nvg.colour_matrix == NIGHTVISION_MATRIX_II)
			modifications += "visor"
*/
/obj/item/clothing/mask/gas/stalker
	name = "gas mask"
	desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by rookies and veterans of all factions due to its universal functionality. Does not provide any physical protection."
	eng_desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by rookies and veterans of all factions due to its universal functionality. Does not provide any physical protection."
	icon_state = "gasmasknew"
	item_state = "gasmasknew"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	armor = list(melee = 5, bullet = 0, laser = 30,burn = 30, bomb = 0, bio = 20, rad = 60, electro = 30, psy = 0)
	burn_state = FIRE_PROOF
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/gp4
	name = "gp-4 gas mask"
	desc = "The Soviet GP-4 is another mask in the Soviet GP series. It was made to be issued to civilians due to the rising panic about the Cold War. This model is extremely common in the Zone and is favored by many stalkers due to its relative reliability and light weight."
	eng_desc = "The Soviet GP-4 is another mask in the Soviet GP series. It was made to be issued to civilians due to the rising panic about the Cold War. This model is extremely common in the Zone and is favored by many stalkers due to its relative reliability and light weight."
	icon_state = "gp4"
	item_state = "gp4"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags = BLOCKFACIALHAIR
	armor = list(melee = 5, bullet = 0, laser = 30,burn = 30, bomb = 0, bio = 20, rad = 30, electro = 25, psy = 0)
	burn_state = FIRE_PROOF
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/gp5
	name = "gp-5 gas mask"
	desc = "A gas mask."
	eng_desc = "A gas mask."
	icon_state = "gp5"
	item_state = "gp5"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags = BLOCKHAIR|BLOCKFACIALHAIR
	armor = list(melee = 5, bullet = 0, laser = 30,burn = 30, bomb = 0, bio = 20, rad = 65, electro = 30, psy = 0)
	burn_state = FIRE_PROOF
	unacidable = 1
	durability = 400
	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/mercenary
	name = "gas mask"
	desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by mercenaries. Does not provide any physical protection."
	eng_desc = "A regular plastic and rubber gas mask, used for filtering air for radioactive particles and poisonous substances. Widely used by mercenaries. Does not provide any physical protection."
	icon_state = "mercenary_gasmask"
	item_state = "mercenary_gasmask"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSMOUTH
	flags = BLOCKFACIALHAIR
	armor = list(melee = 5, bullet = 0, laser = 30,burn = 30, bomb = 0, bio = 20, rad = 60, electro = 30, psy = 0)
	burn_state = FIRE_PROOF
	unacidable = 1
	durability = 400

	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)

/obj/item/clothing/mask/gas/stalker/respirator
	name = "respirator"
	desc = "An old respirator. Doesn't protect from much."
	icon_state = "respirator"
	item_state = "respirator"
	body_parts_covered = 0
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	flags_cover = MASKCOVERSEYES | MASKCOVERSMOUTH
	flags = BLOCKFACIALHAIR
	flags_cover = MASKCOVERSMOUTH
	armor = list(melee = 5, bullet = 0, laser = 10,burn = 10, bomb = 0, bio = 5, rad = 20, electro = 10, psy = 0)
	burn_state = FIRE_PROOF
	unacidable = 1
	durability = 400

	modifications = list("padding_head" = 0, "material_head" = 0, "visor_head" = 0)