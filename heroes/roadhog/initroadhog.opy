#!mainFile "../../main.opy"

#!include "heroes/roadhog/roadhogallow.opy"
#!include "heroes/roadhog/roadhogstart.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[roadhog/initroadhog.opy] init roadhog":
    @Event eachPlayer
    @Hero roadhog
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection += -1
    wait(0.16)
    if RULE_CONDITION:
        goto RULE_START