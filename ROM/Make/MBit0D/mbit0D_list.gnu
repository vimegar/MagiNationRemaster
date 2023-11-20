################################################################
# LISTS
################################################################
MBIT0D_BANKS =		ROM\MBIT0D\BANK68.S \
					ROM\MBIT0D\BANK69.S \
					ROM\MBIT0D\BANK6A.S \
					ROM\MBIT0D\BANK6B.S \
					ROM\MBIT0D\BANK6C.S \
					ROM\MBIT0D\BANK6D.S \
					ROM\MBIT0D\BANK6E.S \
					ROM\MBIT0D\BANK6F.S

MBIT0D_FILES =		ROM\MBIT0D\MBIT0D.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT0D\mbit0D_update.txt \
					${MBIT0D_BANKS}

MBIT0D_OFILE =		ROM\MBIT0D.O
