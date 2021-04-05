#if !defined(MAP_FILE)

		#include "map_files\Stalker\Zona2\backup\underground1.dmm"
		#include "map_files\Stalker\Zona2\backup\backwater.dmm"

		#define MAP_FILE "underground1.dmm"
		#define MAP_NAME "Backwater"
		#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)
#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring underground1.dmm.

#endif