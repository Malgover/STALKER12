/obj/item/weapon/reagent_containers/pill/stalker
	icon = 'icons/stalker/items.dmi'
	w_class = 2
	possible_transfer_amounts = list()
	volume = 60
	apply_type = PATCH
	apply_method = "apply"

obj/item/weapon/reagent_containers/pill/stalker/afterattack(obj/target, mob/user , proximity)
	return // thanks inheritance again

obj/item/weapon/reagent_containers/pill/stalker/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/weapon/reagent_containers/pill/stalker/aptechka
	name = "kit"
	desc = "Стара&#255; советска&#255; аптечка."

/obj/item/weapon/reagent_containers/pill/stalker/injector
	name = "Injector"
	icon_state = "sj1"
	desc = "Small-effective combat stimulant. 15 units in one injector."
	eng_desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "sj1"
	var/wrapped = 1
	list_reagents = list("cryoxadone" = 14)
	var/icon_state_opened = "sj1_open"
	var/desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/attack_self(mob/user)
	if(wrapped)
		Unwrap(user)
	else
		..()

/obj/item/weapon/reagent_containers/pill/stalker/injector/proc/Unwrap(mob/user)
	icon_state = icon_state_opened
	desc = desc_opened
	if(user.client && (user.client.prefs.chat_toggles & CHAT_LANGUAGE))
		user << "<span class='notice'>You open the package.</span>"
	else
		user << "<span class='notice'>Вы снимаете крышку.</span>"
	wrapped = 0

/obj/item/weapon/reagent_containers/pill/stalker/injector/sj1
	name = "SJ1"
	icon_state = "sj1"
	desc = "Small-effective combat stimulant. 15 units in one injector."
	eng_desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "sj1"
	list_reagents = list("cryoxadone" = 14)
	icon_state_opened = "sj1_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/etg_c
	name = "eTG-c"
	icon_state = "etgc"
	desc = "Really-effective combat stimulant."
	eng_desc = "Really-effective combat stimulant."
	item_state = "etgc"
	list_reagents = list("cryoxadoneb" = 6)
	icon_state_opened = "etgc_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/sj6
	name = "SJ6"
	icon_state = "sj6"
	desc = "Really-really-effective combat stimulant."
	eng_desc = "Really-really-effective combat stimulant."
	item_state = "sj6"
	list_reagents = list("cryoxadoney" = 6)
	icon_state_opened = "sj6_open"
	desc_opened = "Opened injector."
