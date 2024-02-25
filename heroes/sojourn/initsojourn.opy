#!mainFile "../../main.opy"

#!include "heroes/sojourn/sojournallow.opy"
#!include "heroes/sojourn/sojournstart.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[sojourn/initsojourn.opy] init sojourn":
    @Event eachPlayer
    @Hero sojourn
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection += -1
    wait(0.16)
    if RULE_CONDITION:
        goto RULE_START