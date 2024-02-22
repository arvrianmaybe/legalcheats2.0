#!mainFile "../../main.opy"

#!include "heroes/lucio/lucioboost.opy"

#Player variables

playervar HackDetection 2
playervar LucioBoosting 9


rule "[lucio/lucioboost.opy] lucio boost":
    @Event eachPlayer
    @Hero lucio
    @Condition eventPlayer.isUsingAbility2() == true
    
    #took this from kendlr
    getPlayersInRadius(eventPlayer, 12, eventPlayer.getTeam(), LosCheck.SURFACES).LucioBoosting = 1
    wait(0.16)
    eventPlayer.LucioBoosting = 0
    eventPlayer.HackDetection = -1


