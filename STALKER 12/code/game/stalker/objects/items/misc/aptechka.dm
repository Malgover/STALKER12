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

/obj/item/weapon/reagent_containers/pill/stalker/injector
	name = "Injector"
	icon_state = "brute"
	desc = "Small-effective combat stimulant. 15 units in one injector."
	eng_desc = "Small-effective combat stimulant. 15 units in one injector."
	item_state = "brute"
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

obj/item/weapon/reagent_containers/pill/stalker/injector/canconsume(mob/eater, mob/user)
	if(wrapped == 1)
		return 0
	return 1 // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/weapon/reagent_containers/pill/stalker/injector/brute
	name = "brute trauma treatment injector"
	icon_state = "brute"
	desc = "Small yet effective bruise-healing stimulant. 25 units in one injector. Taking two of those in a quick succession isn't recommended."
	eng_desc = "Small yet effective bruise-healing stimulant. 25 units in one injector. Taking two of those in a quick succession isn't recommended."
	item_state = "brute"
	list_reagents = list("bicaridine" = 25)
	icon_state_opened = "brute_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/burn
	name = "burn trauma treatment injector"
	icon_state = "burn"
	desc = "Small yet effective burn-treating solution. 25 units in one injector. Taking two of those in a quick succession isn't recommended."
	eng_desc = "Small yet effective burn-treating solution. 25 units in one injector. Taking two of those in a quick succession isn't recommended."
	item_state = "burn"
	list_reagents = list("kelotane" = 25)
	icon_state_opened = "burn_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/toxin
	name = "antitoxin injector"
	icon_state = "toxin"
	desc = "Small yet effective antitoxin injector. 25 units in one injector."
	eng_desc = "Small yet effective antitoxin injector. 25 units in one injector."
	item_state = "toxin"
	list_reagents = list("charcoal" = 25)
	icon_state_opened = "toxin_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/blood
	name = "blood-refilling coagulant injector"
	icon_state = "blood"
	desc = "Effective coagulant that also doubles as hematogen. 25 units in one injector."
	eng_desc = "Effective coagulant that also doubles as hematogen. 25 units in one injector."
	item_state = "blood"
	list_reagents = list("coagulant" = 25)
	icon_state_opened = "blood_open"
	desc_opened = "Opened injector."

/obj/item/weapon/reagent_containers/pill/stalker/injector/painkiller
	name = "combat stimulants injector"
	icon_state = "painkiller"
	desc = "Military-grade mix of combat stimulants and painkillers. 40 units in one injector."
	eng_desc = "Military-grade mix of combat stimulants and painkillers. 40 units in one injector."
	item_state = "painkiller"
	list_reagents = list("mine_salve" = 20)
	icon_state_opened = "painkiller_open"
	desc_opened = "Opened injector."