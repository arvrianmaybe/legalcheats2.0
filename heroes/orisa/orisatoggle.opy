#!mainFile "../../main.opy"

#Global variables

globalvar Orisalag 34


rule "[orisa/orisatoggle.opy] orisa toggle fake lag":
    Orisalag[99] = createWorkshopSetting(bool, "Orisa", "Orisa Fake Lag", true, 99)