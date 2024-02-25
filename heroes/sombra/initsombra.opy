#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[somrba/initsombra.opy] init sombra":
    @Event eachPlayer
    @Hero sombra
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection += -1
    wait(0.16)
    if RULE_CONDITION:
        goto RULE_START


