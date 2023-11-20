################################################################
# LISTS
################################################################
MBIT0F_BANKS =		ROM\MBIT0F\BANK78.S \
					ROM\MBIT0F\BANK79.S \
					ROM\MBIT0F\BANK7A.S \
					ROM\MBIT0F\BANK7B.S \
					ROM\MBIT0F\BANK7C.S \
					ROM\MBIT0F\BANK7D.S \
					ROM\MBIT0F\BANK7E.S \
					ROM\MBIT0F\BANK7F.S

MBIT0F_FILES =	ROM\MBIT0F\MBIT0F.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0F\mbit0F_update.txt \
					${MBIT0F_BANKS}

MBIT0F_OFILE =		ROM\MBIT0F.O
