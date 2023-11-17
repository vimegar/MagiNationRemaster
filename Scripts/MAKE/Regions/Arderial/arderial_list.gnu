################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\ARDERIAL\PALACE\ardpalace_list.gnu
include		MAKE\REGIONS\ARDERIAL\CLOUDS\ardclouds_list.gnu
include		MAKE\REGIONS\ARDERIAL\GARDEN\ardgarden_list.gnu
include		MAKE\REGIONS\ARDERIAL\CITY\ardcity_list.gnu
include		MAKE\REGIONS\ARDERIAL\GEYSER\ardgeyser_list.gnu

################################################################
# LISTS
################################################################

ARDERIAL_HSFILES =	REGIONS\ARDERIAL\arderial_hs.MGI \
					${ARDPALACE_HSFILES} \
					${ARDCLOUDS_HSFILES} \
					${ARDGARDEN_HSFILES} \
					${ARDCITY_HSFILES} \
					${ARDGEYSER_HSFILES}

ARDERIAL_MPFILES =	REGIONS\ARDERIAL\arderial_mp.MGI \
					${ARDPALACE_MPFILES} \
					${ARDCLOUDS_MPFILES} \
					${ARDGARDEN_MPFILES} \
					${ARDCITY_MPFILES} \
					${ARDGEYSER_MPFILES}

ARDERIAL_SFILES =	${ARDPALACE_SFILES} \
					${ARDCLOUDS_SFILES} \
					${ARDGARDEN_SFILES} \
					${ARDCITY_SFILES} \
					${ARDGEYSER_SFILES}


