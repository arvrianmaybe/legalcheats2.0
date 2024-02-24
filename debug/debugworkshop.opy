#!mainFile "../main.opy"

#!include "debug/debugtoggle.opy"
#!include "debug/dummybot.opy"

#Global variables

globalvar Workshop_Settings 29

rule "[debug/debugworkshop.opy] enable toggle":
    Workshop_Settings[99] = createWorkshopSetting(bool, "Dev Mode", "Debug", false, 99)