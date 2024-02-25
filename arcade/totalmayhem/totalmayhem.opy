#!mainFile "../../main.opy"

#!include "arcade/totalmayhemscale.opy"
#!include "arcade/lucioboostfix.opy"

#Global variables

globalvar Totalmayhem 33

rule "[arcade/totalmayhem.opy] total mayhem":
    @Event eachPlayer
    @Condition Totalmayhem[99] == true
    
    eventPlayer.setHealingDealt(175)
    eventPlayer.setHealingReceived(175)
    eventPlayer.setMaxHealth(200)
    eventPlayer.setDamageDealt(175)
    hudSubheader(getAllPlayers(), "TOTAL MAYHEM ENABLE", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    destroyAllHudTexts()
    wait(0.25)
    destroyAllHudTexts()
    hudSubheader(getAllPlayers(), "TOTAL MAYHEM ENABLE", HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)