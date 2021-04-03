#if !defined(MAP_FILE)
	#include "map_files\Stalker\Pripyat\pripyat.dmm"
	#include "map_files\Stalker\Pripyat\firstfloor.dmm"
	#include "map_files\Stalker\Pripyat\radar.dmm"


	#define MAP_FILE "pripyat.dmm"
	#define MAP_NAME "Pripyat"
	#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included. Ignoring Zona.dm.

#endif