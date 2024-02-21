#!mainFile "../../main.opy"

#Player variables

playervar Duel 0
playervar IsDueling 1


rule "[junkerqueen/junkerqueenlost.opy] junkerqueen lost":
    @Event playerDied
    @Hero junkerQueen
    @Condition eventPlayer.IsDueling == true
    
    eventPlayer.IsDueling = false
    wait(1)
    bigMessage(getAllPlayers(), "{1} you won against {0}".format("{0} {1}".format(heroIcon(eventPlayer.getCurrentHero()), eventPlayer), "{0} {1}".format(heroIcon(eventPlayer.Duel[0].getCurrentHero()), eventPlayer.Duel[0])))


