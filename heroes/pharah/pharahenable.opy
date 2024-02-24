#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[pharah/pharahenable.opy]pharah enable cheats":
    @Event eachPlayer
    @Hero pharah
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).startScalingSize(0.5, true)
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).setDamageReceived(50)
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).setHealingReceived(50)
    wait(0.025)
    if RULE_CONDITION:
        goto RULE_START