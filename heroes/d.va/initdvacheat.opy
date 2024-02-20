#!mainFile "../../main.opy"

#!include "heroes/d.va/d.vaallowcheats.opy"
#!include "heroes/d.va/d.vaenabblecheats.opy"
#!include "heroes/d.va/d.vadmgfix.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3

rule "[d.va/initdva.opy] init d.va":
    @Event eachPlayer
    @Hero dva
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + -1
    wait(0.16)
    if RULE_CONDITION:
        goto RULE_START