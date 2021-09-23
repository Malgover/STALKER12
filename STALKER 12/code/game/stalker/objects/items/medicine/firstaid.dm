/obj/item/weapon/storage/firstaid/stalker
	name = "first-aid kit for Stalker13 (you shouldn't see  this)"
	desc = "It's an emergency medical kit for those serious boo-boos, but slav and NEVER FUCKING ACQUIRABLE. Report in dev channel if you get one."
	icon = 'icons/stalker/items.dmi'
	icon_state = "aptechkar"
	throw_speed = 3
	throw_range = 7
	max_w_class = 2 //Max size of objects that this object can store (in effect only if can_hold isn't set)
	max_combined_w_class = 21 //The sum of the w_classes of all the items in this storage item.
	storage_slots = 7 //The number of storage slots in this container.
	can_hold = list(
		/obj/item/weapon/reagent_containers/pill,
		/obj/item/weapon/reagent_containers/pill/patch,
		/obj/item/stack/medical,
		/obj/item/weapon/reagent_containers/pill/stalker/injector,
		/obj/item/weapon/reagent_containers/hypospray
		)

/obj/item/weapon/storage/firstaid/stalker/civillian
	name = "civillian medkit"
	icon_state = "aptechkar"
	desc = "An all-purpose medkit. Used to treat injuries of various types and severities - wounds, burns, poisonings, etc."
	storage_slots = 5

/obj/item/weapon/storage/firstaid/stalker/civillian/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/bruise_pack(src)
	new /obj/item/weapon/reagent_containers/pill/charcoal(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen(src)
	return

/obj/item/weapon/storage/firstaid/stalker/military
	name = "military medkit"
	icon_state = "aptechkab"
	desc = "A specialized medical set to fight against physical damage and blood loss. In it is included a component for blood coagulation, antibiotics, immunal stimulators, and painkillers."
	storage_slots = 7

/obj/item/weapon/storage/firstaid/stalker/military/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/weapon/reagent_containers/pill/patch/styptic(src)
	new /obj/item/weapon/reagent_containers/pill/patch/silver_sulf(src)
	new /obj/item/weapon/reagent_containers/pill/patch/synthflesh(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/blood(src) //blood coagulation and blood loss
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/painkiller(src) //painkillers
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/toxin(src) //antibiotics and immunal stimulants
	return

/obj/item/weapon/storage/firstaid/stalker/scientific
	name = "scientific medkit"
	icon_state = "aptechkay"
	desc = "High end medical set designed for use in The Zone. This medkit includes items used to stop bleeding, treat burns, clean wounds, and treat a variety of different injuries. It also includes anti-radiation pills and medicine."
	storage_slots = 7

/obj/item/weapon/storage/firstaid/stalker/scientific/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/brute(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/burn(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/blood(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/painkiller(src)
	new /obj/item/weapon/reagent_containers/pill/stalker/injector/toxin(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen/stalker/antirad(src)
	return

/obj/item/stack/medical/gauze/bint
	desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	eng_desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	icon = 'icons/stalker/items.dmi'
	icon_state = "bint"
	amount = 2