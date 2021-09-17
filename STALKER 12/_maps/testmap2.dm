#if !defined(MAP_FILE)

        #include "map_files\Stalker\testmapworking.dmm"

        #define MAP_FILE "testmapworking.dmm"
        #define MAP_NAME "testmapworking"
		#define MAP_TRANSITION_CONFIG list(MAIN_STATION = CROSSLINKED, CENTCOMM = SELFLOOPING)
#elif !defined(MAP_OVERRIDE)

	#warn a map has already been included, ignoring testmap2.dmm.

#endif