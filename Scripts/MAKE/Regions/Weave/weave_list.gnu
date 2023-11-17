################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\WEAVE\PATHVALLEY\pathvalley_list.gnu
include		MAKE\REGIONS\WEAVE\GIASHUT\giashut_list.gnu

################################################################
# LISTS
################################################################
WEAVE_HSFILES =	REGIONS\WEAVE\weave_hs.MGI \
				${WVEGIASHUT_HSFILES} \
				${WVEPATHVALLEY_HSFILES}
				

WEAVE_MPFILES =	REGIONS\WEAVE\weave_mp.MGI \
				${WVEPATHVALLEY_MPFILES} \
				${WVEGIASHUT_MPFILES}
				
WEAVE_SFILES =		${WVEGIASHUT_SFILES} \
					${WVEPATHVALLEY_SFILES}
