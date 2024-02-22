#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[hanzo/hanzopresall.opy] Press All Abilities":
    @Event eachPlayer
    @Hero hanzo
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).forceButtonPress(Button.ABILITY_2)
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).forceButtonPress(Button.ABILITY_1)
    eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).forceButtonPress(Button.ULTIMATE)
    wait(0.25)
    eventPlayer.IsUsingHack = 1


