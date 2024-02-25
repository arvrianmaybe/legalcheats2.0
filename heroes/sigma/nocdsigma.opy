#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2


rule "[sigma/sigmanocdult.opy] no cd ult sigma":
    @Event eachPlayer
    @Hero sigma
    @Condition eventPlayer.isUsingUltimate() == true
    
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.ABILITY_1, 0)
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.ABILITY_2, 0)
    getPlayers(eventPlayer.getTeam()).setAbilityCooldown(Button.SECONDARY_FIRE, 0)
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START
    eventPlayer.HackDetection = -1


