#!mainFile "../main.opy"

#Global variables

globalvar speedysurfers 41

rule "[workshopsettings/speedysurfers.opy] speedy surfers":
    speedysurfers[99] = createWorkshopSetting(bool, "ARCADE MODES", "speedysurfers", false, 99)