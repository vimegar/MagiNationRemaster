################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\UNDERNEATH\MUSHFARM\undmushfarm_list.gnu
include		MAKE\REGIONS\UNDERNEATH\CAVERN\undcavern_list.gnu
include		MAKE\REGIONS\UNDERNEATH\TOWN\undtown_list.gnu
include		MAKE\REGIONS\UNDERNEATH\TUNNELS\undtunnel_list.gnu
include		MAKE\REGIONS\UNDERNEATH\GEYSER\undgeyser_list.gnu

################################################################
# LISTS
################################################################
UNDERNEATH_HSFILES =	REGIONS\UNDERNEATH\underneath_hs.MGI \
				${UNDMUSHFARM_HSFILES} \
				${UNDCAVE_HSFILES} \
				${UNDTOWN_HSFILES} \
				${UNDTUNNEL_HSFILES} \
				${UNDGEYSER_HSFILES} 



UNDERNEATH_MPFILES =	REGIONS\UNDERNEATH\underneath_mp.MGI \
				${UNDMUSHFARM_MPFILES} \
				${UNDCAVE_MPFILES} \
				${UNDTOWN_MPFILES} \
				${UNDTUNNEL_MPFILES} \
				${UNDGEYSER_MPFILES} 

UNDERNEATH_SFILES =	${UNDMUSHFARM_SFILES} \
			${UNDCAVE_SFILES} \
			${UNDTOWN_SFILES} \
			${UNDTUNNEL_SFILES} \
			${UNDGEYSER_SFILES} 
