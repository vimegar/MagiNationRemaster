################################################################
# LISTS
################################################################
MBIT02_BANKS =		ROM\MBIT02\BANK10.S \
					ROM\MBIT02\BANK11.S \
					ROM\MBIT02\BANK12.S \
					ROM\MBIT02\BANK13.S \
					ROM\MBIT02\BANK14.S \
					ROM\MBIT02\BANK15.S \
					ROM\MBIT02\BANK16.S \
					ROM\MBIT02\BANK17.S 

MBIT02_FILES =		ROM\MBIT02\MBIT02.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT02\mbit02_update.txt \
					${MBIT02_BANKS}

MBIT02_OFILE =		ROM\MBIT02.O
