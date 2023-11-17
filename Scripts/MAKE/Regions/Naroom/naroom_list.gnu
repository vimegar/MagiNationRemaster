################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\NAROOM\GLADE\nrmglade_list.gnu
include		MAKE\REGIONS\NAROOM\FOREST\nrmforest_list.gnu
include		MAKE\REGIONS\NAROOM\TOWEAVE\nrmtoweave_list.gnu
include		MAKE\REGIONS\NAROOM\LAKE\nrmlake_list.gnu
include		MAKE\REGIONS\NAROOM\RIVER\nrmriver_list.gnu
include		MAKE\REGIONS\NAROOM\VASH\nrmvash_list.gnu
include		MAKE\REGIONS\NAROOM\GEYSER\nrmgeyser_list.gnu

################################################################
# LISTS
################################################################
NAROOM_HSFILES =	REGIONS\NAROOM\NAROOM_HS.MGI \
					${NRMGLADE_HSFILES} \
					${NRMFOREST_HSFILES} \
					${NRMVASH_HSFILES} \
					${NRMTOWEAVE_HSFILES} \
					${NRMLAKE_HSFILES} \
					${NRMGEYSER_HSFILES} \
					${NRMRIVER_HSFILES}


NAROOM_MPFILES =	REGIONS\NAROOM\NAROOM_MP.MGI \
					${NRMGLADE_MPFILES} \
					${NRMFOREST_MPFILES} \
					${NRMVASH_MPFILES} \
					${NRMTOWEAVE_MPFILES} \
					${NRMLAKE_MPFILES} \
					${NRMGEYSER_MPFILES} \
					${NRMRIVER_MPFILES}

NAROOM_SFILES =		${NRMGLADE_SFILES} \
					${NRMFOREST_SFILES} \
					${NRMVASH_SFILES} \
					${NRMLAKE_SFILES} \
					${NRMGEYSER_SFILES} \
					${NRMRIVER_SFILES} \
					${NRMTOWEAVE_SFILES}
