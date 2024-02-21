#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2


rule "[kiriko/kirikonocdult.opy] no cd ult kiriko":
    @Event eachPlayer
    @Hero kiriko
    @Condition eventPlayer.isUsingUltimate() == true
    
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.ABILITY_1, 0)
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.ABILITY_2, 0)
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.SECONDARY_FIRE, 0)
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START
    eventPlayer.HackDetection = -1