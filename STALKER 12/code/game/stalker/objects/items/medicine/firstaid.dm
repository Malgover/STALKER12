/obj/item/weapon/storage/firstaid/stalker
	name = "first-aid kit"
	desc = "It's an emergency medical kit for those serious boo-boos."
	icon_state = "firstaid"
	throw_speed = 3
	throw_range = 7
	max_w_class = 1 //Max size of objects that this object can store (in effect only if can_hold isn't set)
	max_combined_w_class = 14 //The sum of the w_classes of all the items in this storage item.
	storage_slots = 7 //The number of storage slots in this container.

/obj/item/weapon/storage/firstaid/regular
	icon_state = "firstaid"
	desc = "A first aid kit with the ability to heal common types of injuries."

/obj/item/weapon/storage/firstaid/regular/New()
	..()
	if(empty) return
	new /obj/item/stack/medical/gauze(src)
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/stack/medical/gauze/bint(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/stack/medical/ointment(src)
	new /obj/item/weapon/reagent_containers/hypospray/medipen(src)
	new /obj/item/device/healthanalyzer(src)
	return

/obj/item/stack/medical/gauze/bint
	desc = "Перев&#255;зочный материал. Помогает остановить кровотечение."
	eng_desc = "A common gauze bandage. It'll work extremely well for stopping any bleeding!"
	icon = 'icons/stalker/items.dmi'
	icon_state = "bint"
	amount = 2