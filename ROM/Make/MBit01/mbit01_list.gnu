################################################################
# LISTS
################################################################
MBIT01_BANKS =		ROM\MBIT01\BANK08.S \
					ROM\MBIT01\BANK09.S \
					ROM\MBIT01\BANK0A.S \
					ROM\MBIT01\BANK0B.S \
					ROM\MBIT01\BANK0C.S \
					ROM\MBIT01\BANK0D.S \
					ROM\MBIT01\BANK0E.S \
					ROM\MBIT01\BANK0F.S

MBIT01_FILES =		ROM\MBIT01\MBIT01.S \
					ROM\MAKE\rom_update.txt \
					ROM\MAKE\MBIT01\mbit01_update.txt \
					${MBIT01_BANKS}

MBIT01_OFILE =		ROM\MBIT01.O
