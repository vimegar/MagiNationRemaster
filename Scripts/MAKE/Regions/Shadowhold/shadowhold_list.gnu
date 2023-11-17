################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\SHADOWHOLD\HLDMAZE\HLDMAZE_list.gnu
include		MAKE\REGIONS\SHADOWHOLD\HLDCELL\HLDCELL_list.gnu

################################################################
# LISTS
################################################################
SHADOWHOLD_HSFILES =	REGIONS\SHADOWHOLD\shadowhold_hs.MGI \
						${HLDMAZE_HSFILES} \
						${HLDCELL_HSFILES}

SHADOWHOLD_MPFILES =	REGIONS\SHADOWHOLD\shadowhold_mp.MGI \
						${HLDMAZE_MPFILES} \
						${HLDCELL_MPFILES}
					
SHADOWHOLD_SFILES =		${HLDMAZE_SFILES} \
						${HLDCELL_SFILES} 


