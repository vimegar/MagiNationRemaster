################################################################
# LISTS
################################################################
MBIT05_BANKS =		ROM\MBIT05\BANK28.S \
					ROM\MBIT05\BANK29.S \
					ROM\MBIT05\BANK2A.S \
					ROM\MBIT05\BANK2B.S \
					ROM\MBIT05\BANK2C.S \
					ROM\MBIT05\BANK2D.S \
					ROM\MBIT05\BANK2E.S \
					ROM\MBIT05\BANK2F.S

MBIT05_FILES =		ROM\MBIT05\MBIT05.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT05\mbit05_update.txt \
					${MBIT05_BANKS}

MBIT05_OFILE =		ROM\MBIT05.O
