#!mainFile "../main.opy"

#Global variables

globalvar Totalmayhem 33


rule "[workshopsettings/totalmayhem.opy] total mayhem":
    Totalmayhem[99] = createWorkshopSetting(bool, "ARCADE MODES", "total mayhem", false, 99)