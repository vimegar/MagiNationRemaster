################################################################
# LISTS
################################################################
MBIT08_BANKS =		ROM\MBIT08\BANK40.S \
					ROM\MBIT08\BANK41.S \
					ROM\MBIT08\BANK42.S \
					ROM\MBIT08\BANK43.S \
					ROM\MBIT08\BANK44.S \
					ROM\MBIT08\BANK45.S \
					ROM\MBIT08\BANK46.S \
					ROM\MBIT08\BANK47.S 

MBIT08_FILES =		ROM\MBIT08\MBIT08.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT08\mbit08_update.txt \
					${MBIT08_BANKS}

MBIT08_OFILE =		ROM\MBIT08.O
