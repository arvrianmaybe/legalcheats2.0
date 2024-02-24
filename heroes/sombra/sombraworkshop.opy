#!mainFile "../../main.opy"

#Global variables

globalvar SombraUlt 31


rule "[sombra/sombraworkshop.opy] sombra enable ddos ult":
    SombraUlt[99] = createWorkshopSetting(bool, "Sombra DDOS", "Sombra Ult", false, 99)