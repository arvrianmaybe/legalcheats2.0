#!mainFile "../../main.opy"

#!include "heroes/reaper/reapertp.opy"

#Player variables

playervar HackDetection 2


rule "[reaper/reaperrespawn.opy] repear resurrect":
    @Event playerDied
    @Hero reaper
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.resurrect()
    eventPlayer.setStatusEffect(null, Status.ASLEEP, 8)
    eventPlayer.setStatusEffect(null, Status.PHASED_OUT, 8)
    wait(8)
    eventPlayer.HackDetection = -1