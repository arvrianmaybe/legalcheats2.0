#!mainFile "../../main.opy"

#Global variables

globalvar Nolimits 26


rule "[arcade/nolimits.opy] no limits":
    @Event eachPlayer
    @Condition Nolimits[99] == true
    
    eventPlayer.setAllowedHeroes(getAllHeroes())
    hudSubheader(getAllPlayers(), "NO LIMITS ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    hudSubheader(getAllPlayers(), "NO LIMITS ENABLED", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)