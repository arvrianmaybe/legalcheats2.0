#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[junkrat/junkinit.opy] junkrat start":
    @Event eachPlayer
    @Hero junkrat
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + -1
    wait(0.025)
    if RULE_CONDITION:
        goto RULE_START