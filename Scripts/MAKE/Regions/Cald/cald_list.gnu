################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\CALD\LAVAPOOL\lavapool_list.gnu
include		MAKE\REGIONS\CALD\LAVATOWN\lavatown_list.gnu
include		MAKE\REGIONS\CALD\LAVATUBE\lavatube_list.gnu
include		MAKE\REGIONS\CALD\LAVAVENT\lavavent_list.gnu
include		MAKE\REGIONS\CALD\FERRY\ferry_list.gnu
include		MAKE\REGIONS\CALD\GEYSER\cldgeyser_list.gnu

################################################################
# LISTS
################################################################
CALD_HSFILES = REGIONS\CALD\cald_hs.MGI \
				${CLDLAVAPOOL_HSFILES} \
				${CLDLAVATOWN_HSFILES} \
				${CLDLAVATUBE_HSFILES} \
				${CLDLAVAVENT_HSFILES} \
				${FERRY_HSFILES} \
				${CLDGEYSER_HSFILES}

CALD_MPFILES = REGIONS\CALD\cald_mp.MGI \
					${CLDLAVAPOOL_MPFILES} \
					${CLDLAVATOWN_MPFILES} \
					${CLDLAVATUBE_MPFILES} \
					${CLDLAVAVENT_MPFILES} \
					${FERRY_MPFILES} \
					${CLDGEYSER_MPFILES}

CALD_SFILES =	${CLDLAVAPOOL_SFILES} \
				${CLDLAVATOWN_SFILES} \
				${CLDLAVATUBE_SFILES} \
				${CLDLAVAVENT_SFILES} \
				${FERRY_SFILES} \
				${CLDGEYSER_SFILES}
