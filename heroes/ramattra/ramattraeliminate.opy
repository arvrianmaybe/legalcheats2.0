#!mainFile "../../main.opy"

#Player variables

playervar Duel 0
playervar IsDueling 1


rule "[rammatra/rammatraeliminate.opy] rammatra stop solo ult":
    @Event playerDealtFinalBlow
    @Hero rammatra
    @Condition eventPlayer.IsDueling == true
    @Condition victim == eventPlayer.Duel[0]
    
    eventPlayer.IsDueling = false
    wait(1)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    bigMessage(getAllPlayers(), "{0} won against {1}".format("{0} {1}".format(heroIcon(eventPlayer.getCurrentHero()), eventPlayer), "{0} {1}".format(heroIcon(eventPlayer.Duel[0].getCurrentHero()), eventPlayer.Duel[0])))