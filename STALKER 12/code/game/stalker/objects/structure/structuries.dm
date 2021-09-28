/obj/structure/table/stalker
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker)
	pass_flags = LETPASSTHROW

/obj/structure/table/stalker/wood
	desc = "A simple wooden table."
	eng_desc = "Simple table."
	icon = 'icons/obj/smooth_structures/stol_stalker.dmi'
	icon_state = "stol"
	deconstructable = 0
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood)

/obj/structure/table/fancy
	name = "fancy table"
	desc = "A fancy table."
	icon = 'icons/obj/smooth_structures/fancy_table.dmi'
	icon_state = "fancytable"
	canSmoothWith = null
	smooth = SMOOTH_TRUE
	deconstructable = 0

/obj/structure/table/stalker/steeltable
	desc = "Simple steel table."
	eng_desc = "Simple steel table."
	icon = 'icons/obj/smooth_structures/stalker_steeltable.dmi'
	icon_state = "steeltable"
	deconstructable = 0
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/steeltable)

/obj/structure/table/stalker/steeltable/rusty
	name = "rusty table"
	icon = 'icons/obj/smooth_structures/stalker_steeltable.dmi'
	icon_state = "table1"
	smooth = SMOOTH_FALSE
	deconstructable = 0

/obj/structure/table/stalker/steeltable/rusty/right
	name = "rusty table"
	icon = 'icons/obj/smooth_structures/stalker_steeltable.dmi'
	icon_state = "table2"
	smooth = SMOOTH_FALSE
	deconstructable = 0

/obj/structure/table/stalker/wood/bar
	desc = "A wooden bar."
	icon = 'icons/obj/smooth_structures/stol_stalker_bar.dmi'
	icon_state = "bar"
	smooth = SMOOTH_TRUE
	canSmoothWith = list(/obj/structure/table/stalker/wood/bar)

/obj/structure/table/stalker/wood/bar100rentgen
	desc = "A simple table."
	icon = 'icons/stalker/structure/bartables.dmi'
	icon_state = "table"
	smooth = SMOOTH_FALSE

/obj/structure/stalker/okno
	name = "Window"
	desc = "Old wooden window."
	eng_desc = "Old wooden window."
	icon = 'icons/stalker/decor2.dmi'
	pass_flags = LETPASSTHROW
	density = 0
	opacity = 0
	//var/unpassable = 0

/obj/structure/stalker/okno/window1
	icon_state = "okno1"

/obj/structure/stalker/okno/window2
	icon_state = "okno2"

/obj/structure/stalker/okno/window3
	icon_state = "okno3"

/obj/structure/stalker/okno/window4
	icon_state = "okno4"



