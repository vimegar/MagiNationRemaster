################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\NAROOM\naroom_list.gnu
include		MAKE\REGIONS\OROTHE\orothe_list.gnu
include		MAKE\REGIONS\OVERWORLD\overworld_list.gnu
include		MAKE\REGIONS\WEAVE\weave_list.gnu
include		MAKE\REGIONS\HOMETOWN\hometown_list.gnu
include		MAKE\REGIONS\ARDERIAL\arderial_list.gnu
include		MAKE\REGIONS\UNDERNEATH\underneath_list.gnu
include		MAKE\REGIONS\CALD\cald_list.gnu
include		MAKE\REGIONS\SHADOWHOLD\shadowhold_list.gnu
include		MAKE\REGIONS\HIDDEN\hidden_list.gnu
include		MAKE\REGIONS\CORE\core_list.gnu

################################################################
# LISTS
################################################################
REGIONS_HSFILES =	${NAROOM_HSFILES} \
					${ARDERIAL_HSFILES} \
					${WEAVE_HSFILES} \
					${OROTHE_HSFILES} \
					${HOMETOWN_HSFILES} \
					${UNDERNEATH_HSFILES} \
					${CALD_HSFILES} \
					${SHADOWHOLD_HSFILES} \
					${OVERWORLD_HSFILES} \
					${HIDDEN_HSFILES} \
					${CORE_HSFILES}

REGIONS_MPFILES =	${NAROOM_MPFILES} \
					${ARDERIAL_MPFILES} \
					${WEAVE_MPFILES} \
					${OROTHE_MPFILES} \
					${HOMETOWN_MPFILES} \
					${UNDERNEATH_MPFILES} \
					${CALD_MPFILES} \
					${SHADOWHOLD_MPFILES} \
					${OVERWORLD_MPFILES} \
					${HIDDEN_MPFILES} \
					${CORE_MPFILES}

REGIONS_SFILES =	${NAROOM_SFILES} \
					${ARDERIAL_SFILES} \
					${WEAVE_SFILES} \
					${OROTHE_SFILES} \
					${HOMETOWN_SFILES} \
					${UNDERNEATH_SFILES} \
					${CALD_SFILES} \
					${SHADOWHOLD_SFILES} \
					${OVERWORLD_SFILES} \
					${HIDDEN_SFILES} \
					${CORE_SFILES}

