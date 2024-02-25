#!mainFile "../../main.opy"

#!include "arcade/reversemayhem.opy"
#!include "arcade/reversemayhemscale.opy"

#Global variables

globalvar Reversemayhem 35

rule "[arcade/reversemayhem.opy] reverse mayhem":
    @Event eachPlayer
    @Condition Reversemayhem[99] == true
    
    eventPlayer.setHealingDealt(50)
    eventPlayer.setHealingReceived(50)
    eventPlayer.setMaxHealth(50)
    eventPlayer.setDamageDealt(50)
    hudSubheader(getAllPlayers(), "REVERSE MAYHEM ENABLE", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    destroyAllHudTexts()
    hudSubheader(getAllPlayers(), "REVERSE MAYHEM ENABLE", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)