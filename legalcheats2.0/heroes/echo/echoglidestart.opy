#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[echo/echoglidestart] echo start flight":
    @Event eachPlayer
    @Hero echo
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.applyImpulse(eventPlayer.getFacingDirection(), 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.HackDetection = eventPlayer.HackDetection + -1
    wait()
    if RULE_CONDITION:
        goto RULE_START