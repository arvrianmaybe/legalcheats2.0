#!mainFile "../main.opy"

#Global variables

globalvar Nolimits 26


rule "[workshopsettings/nolimits.opy] no limits":
    Nolimits[99] = createWorkshopSetting(bool, "ARCADE MODES", "no limits", false, 99)