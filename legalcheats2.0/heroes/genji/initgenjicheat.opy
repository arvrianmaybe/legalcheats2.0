#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[genji/initgenji.opy] init genji":
    @Event eachPlayer
    @Hero genji
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + -1
    wait(0.025)
    if RULE_CONDITION:
        goto RULE_START


