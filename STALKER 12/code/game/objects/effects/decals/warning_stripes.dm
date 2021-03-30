/obj/effect/decal/damage
	icon = 'icons/effects/effects.dmi'
	layer = 2.5
	pixel_x = 0
	pixel_y = 0

/obj/effect/decal/damage/broken1
	icon_state = "broken1"

/obj/effect/decal/damage/broken2
	icon_state = "broken2"

/obj/effect/decal/damage/broken3
	icon_state = "broken3"

/obj/effect/decal/damage/broken4
	icon_state = "broken4"

/obj/effect/decal/damage/broken0
	icon_state = "broken0"

/obj/effect/decal/damage/burned1
	icon_state = "burned1"

/obj/effect/decal/damage/burned0
	icon_state = "burned0"

/obj/effect/decal/warning_stripes
	icon = 'icons/effects/warning_stripes.dmi'
	layer = 2.5
	pixel_x = 0
	pixel_y = 0

/obj/effect/decal/warning_stripes/cross
	icon_state = "cross"

/obj/effect/decal/warning_stripes/cross/New()
	..()
	pixel_x = rand(-10, 10)
	pixel_y = rand(-10, 10)

/obj/effect/decal/warning_stripes/bordur
	layer = 2.9

/obj/effect/decal/warning_stripes/bordur/side/north
	icon_state = "road_b5"

/obj/effect/decal/warning_stripes/bordur/side/south
	icon_state = "road_b6"

/obj/effect/decal/warning_stripes/bordur/side/west
	icon_state = "road_b7"

/obj/effect/decal/warning_stripes/bordur/side/east
	icon_state = "road_b8"

/obj/effect/decal/warning_stripes/bordur/corner/one
	icon_state = "road_b3"

/obj/effect/decal/warning_stripes/bordur/corner/two
	icon_state = "road_b2"

/obj/effect/decal/warning_stripes/bordur/corner/three
	icon_state = "road_b1"

/obj/effect/decal/warning_stripes/bordur/corner/four
	icon_state = "road_b4"

/obj/effect/decal/warning_stripes/New()
	. = ..()

	loc.overlays += src
	del src