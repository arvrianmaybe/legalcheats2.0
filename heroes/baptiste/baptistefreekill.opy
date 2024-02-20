#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3

rule "[baptiste/baptistefreekill.opy] baptiste oneshot":
    @Event eachPlayer
    @Hero baptiste
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    damage(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())), eventPlayer, 300)