################################################################
# LISTS
################################################################
MBIT0E_BANKS =		ROM\MBIT0E\BANK70.S \
					ROM\MBIT0E\BANK71.S \
					ROM\MBIT0E\BANK72.S \
					ROM\MBIT0E\BANK73.S \
					ROM\MBIT0E\BANK74.S \
					ROM\MBIT0E\BANK75.S \
					ROM\MBIT0E\BANK76.S \
					ROM\MBIT0E\BANK77.S 

MBIT0E_FILES =	ROM\MBIT0E\MBIT0E.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0E\mbit0E_update.txt \
					${MBIT0E_BANKS}

MBIT0E_OFILE =		ROM\MBIT0E.O
