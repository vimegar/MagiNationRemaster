################################################################
# INCLUDES
################################################################
include		MAKE\REGIONS\CORE\THRONE\throne_list.gnu
include		MAKE\REGIONS\CORE\GATE\gate_list.gnu

################################################################
# LISTS
################################################################
CORE_HSFILES =	REGIONS\CORE\core_hs.MGI \
					${THRONE_HSFILES} \
					${GATE_HSFILES}

CORE_MPFILES =	REGIONS\CORE\core_mp.MGI \
					${THRONE_MPFILES} \
					${GATE_MPFILES}

CORE_SFILES =		${THRONE_SFILES} \
					${GATE_SFILES}
