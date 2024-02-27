#!mainFile "../../main.opy"

#!include "arcade/sombrafix.opy"

#Global variables

globalvar invisighoul 39


rule "[arcade/invisighoul.opy] invisighoul":
    @Event eachPlayer
    @Condition invisighoul[99] == true
    
    eventPlayer.setInvisibility(Invis.ALL)
    hudSubheader(getAllPlayers(), "INVISIGHOUL ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    hudSubheader(getAllPlayers(), "INVISIGHOUL ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)