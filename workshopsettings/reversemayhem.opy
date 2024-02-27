#!mainFile "../main.opy"

#Global variables

globalvar Reversemayhem 35


rule "[workshopsettings/reversemayhem.opy] no limits":
    Reversemayhem[99] = createWorkshopSetting(bool, "ARCADE MODES", "reverse mayhem", false, 99)