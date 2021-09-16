/obj/item/weapon/kitchen/knife/tourist
	name = "tourist knife"
	desc = "Дешевый, но достаточно хороший дл&#255; туриста."
	eng_desc = "Cheap shitty knife commonly seen in the hands of Tourists. It's good enough for them, but what about you?"
	icon = 'icons/stalker/weapons.dmi'
	icon_state = "knife"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 25
	throwforce = 15
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	sharpness = IS_SHARP_ACCURATE
	butcher_speed = 1

/obj/item/weapon/kitchen/knife/bayonet
	name = "bayonet"
	desc = "Опасный, но плохой в разделке туш мутантов штык-нож."
	eng_desc = "Dangerous in a combat scenario, but less suited for butchering a Mutant."
	icon = 'icons/stalker/weapons.dmi'
	icon_state = "bayonet"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 37
	throwforce = 20
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "stabbed", "torn", "ripped")
	sharpness = IS_SHARP_ACCURATE
	butcher_speed = 1.25