#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[mei/meienable.opy] mei enable cheat":
    @Event eachPlayer
    @Hero mei
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + -0.5
    wait(0.025)
    if RULE_CONDITION:
        goto RULE_START


