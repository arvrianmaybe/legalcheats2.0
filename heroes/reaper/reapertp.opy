#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3

rule "[reaper/reapertp.opy] reaper tp":
    @Event eachPlayer
    @Hero reaper
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    eventPlayer.teleport(eventPlayer.getFacingDirection() * 10 + eventPlayer.getPosition())