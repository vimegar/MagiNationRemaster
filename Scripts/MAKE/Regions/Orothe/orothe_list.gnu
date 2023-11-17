################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\OROTHE\DEEP\orodeep_list.gnu
include		MAKE\REGIONS\OROTHE\CITY\orocity_list.gnu
include		MAKE\REGIONS\OROTHE\RUINS\ororuins_list.gnu
include		MAKE\REGIONS\OROTHE\TUNNELS\orotunnels_list.gnu
include		MAKE\REGIONS\OROTHE\ISLANDS\oroislands_list.gnu
include		MAKE\REGIONS\OROTHE\GEYSER\orogeyser_list.gnu
include		MAKE\REGIONS\OROTHE\CORAL\orocoral_list.gnu

################################################################
# LISTS
################################################################
OROTHE_HSFILES =	REGIONS\OROTHE\orothe_hs.MGI \
					${ORODEEP_HSFILES} \
					${OROCITY_HSFILES} \
					${ORORUINS_HSFILES} \
					${OROTUNNEL_HSFILES} \
					${OROCORAL_HSFILES} \
					${OROISLANDS_HSFILES} \
					${OROGEYSER_HSFILES}

OROTHE_MPFILES =	REGIONS\OROTHE\orothe_mp.MGI \
					${ORODEEP_MPFILES} \
					${OROCITY_MPFILES} \
					${OROCORAL_MPFILES} \
					${ORORUINS_MPFILES} \
					${OROTUNNEL_MPFILES} \
					${OROISLANDS_MPFILES} \
					${OROGEYSER_MPFILES}
					

OROTHE_SFILES =		${ORODEEP_SFILES} \
					${OROCITY_SFILES} \
					${ORORUINS_SFILES} \
					${OROCORAL_SFILES} \
					${OROTUNNEL_SFILES} \
					${OROISLANDS_SFILES} \
					${OROGEYSER_SFILES}


