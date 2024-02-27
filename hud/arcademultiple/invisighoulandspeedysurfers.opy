#!mainFile "../../main.opy"

#Global variables

globalvar invisighoul 39
globalvar speedysurfers 41


/*
rule "[arcade/invisighoulandspeedysurfers.opy.opy] invisighoul speedysurfers":
    @Event eachPlayer
    @Condition invisighoul[99] == true
    @Condition speedysurfers[99] == true
    
    destroyAllHudTexts()
    wait(0.25)
    eventPlayer.setInvisibility(Invis.ALL)
    hudSubheader(getAllPlayers(), "INVISIGHOUL AND SPEEDY SURFERS ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    hudSubheader(getAllPlayers(), "INVISIGHOUL AND SPEEDY SURFERS ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    hudSubheader(getAllPlayers(), "INVISIGHOUL AND SPEEDY SURFERS ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
*/