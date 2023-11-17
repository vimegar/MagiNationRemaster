################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\HIDDEN\ROOM\room_list.gnu
include		MAKE\REGIONS\HIDDEN\FORT\fort_list.gnu
include		MAKE\REGIONS\HIDDEN\LOAD\load_list.gnu

################################################################
# LISTS
################################################################
HIDDEN_HSFILES =	REGIONS\HIDDEN\HIDDEN_hs.MGI \
					${ROOM_HSFILES} \
					${FORT_HSFILES} \
					${LOAD_HSFILES}

HIDDEN_MPFILES =	REGIONS\HIDDEN\HIDDEN_mp.MGI \
					${ROOM_MPFILES} \
					${FORT_MPFILES} \
					${LOAD_MPFILES}

HIDDEN_SFILES =		${ROOM_SFILES} \
					${FORT_SFILES} \
					${LOAD_SFILES}
