#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[stopusingthecheats.opy] Disable Cheats":
    @Event eachPlayer
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.HackDetection <= 100
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + 1
    wait(0.2)
    if RULE_CONDITION:
        goto RULE_START