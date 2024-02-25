#!mainFile "../../main.opy"

#!include "soldier/soldierallow.opy"
#!include "soldier/soldierstop.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[soldier/soldieraimbot.opy] soldier aimbot":
    @Event eachPlayer
    @Hero baptiste
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    eventPlayer.startFacing(directionTowards(eventPlayer, eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam()))), 10000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.IsUsingHack = 1