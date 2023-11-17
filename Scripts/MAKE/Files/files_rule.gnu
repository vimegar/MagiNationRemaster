
################################################################
# MAKERULES
################################################################
FILES\HS.S: FILES\HS.MGI ${REGIONS_HSFILES} ${INCLUDES}
	MGIPARSE	FILES\HS.MGI

FILES\MP.S: FILES\MP.MGI ${REGIONS_MPFILES} ${INCLUDES}
	MGIPARSE	FILES\MP.MGI

