#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2


rule "[symmetra/symmetrarespawn.opy] symmetra full heal":
    @Event eachPlayer
    @Hero symmetra
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = 1
    heal(eventPlayer, null, 999)