Stuff I changed:
- Changed all the calls to gmake to make because I'm building on windows with GnuWin32
- Replaced the call to ABISX with a call to isx2gb
- Renamed Make.bat to Make\_script.bat because Make.bat was shadowing the make command and infinite looping :p
- Commented out Jump (?\_WARPPORTAL) on line 178 of system.mgi. This is preempting the title screens with a jump to the map NRMRIVER03, which is a test map with a bunch of portals to different parts of the game.

Running the makefile:
- If you're on Windows, you'll need a working version of make. I used GnuWin32: https://gnuwin32.sourceforge.net/packages/make.htm
- You'll need to install ISLK32 and ISAS32. I found them here: https://www.virtual-boy.com/tools/isas-islk-dev-kit/downloads/1046815/
- You'll want a tool to convert the .ISX into a usable ROM. I used isx2gb: https://gitlab.com/gitendo/isx2gb
- Make sure make.exe, ISLK32.exe, ISAS32.exe, and mgiparse.exe (under MagiScript) are all on your PATH
-- For some reason having them on my system PATH didn't work when running the batch script. I had to add them to my user PATH.

See also: https://github.com/vimegar/MagiNationRemaster
