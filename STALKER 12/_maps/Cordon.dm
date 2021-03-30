#if !defined(MAP_FILE)
	#include "map_files\Stalker\Cordon\underground1.dmm"
	#include "map_files\Stalker\Cordon\cordon.dmm"
	#include "map_files\Stalker\Cordon\agroprom.dmm"
	#include "map_files\Stalker\Cordon\bar.dmm"

	#define MAP_FILE "Cordon.dmm"
	#define MAP_NAME "Cordon"
	#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included. Ignoring Zona.dm.

#endif