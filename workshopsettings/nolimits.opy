#!mainFile "../main.opy"

#Global variables

globalvar Totalmayhem 33


rule "[workshopsettings/worskhopnolimits.opy] no limits":
    Totalmayhem[99] = createWorkshopSetting(bool, "ARCADE MODES", "no limits", false, 99)