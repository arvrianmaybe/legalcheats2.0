#!mainFile "../../main.opy"

#!include "heroes/genji/initgenjicheat.opy"
#!include "heroes/genji/genjiesp.opy"
#!include "heroes/genji/genjiallowcheats.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[genji/genjiragecheat.opy] genji rage hack":
    @Event eachPlayer
    @Hero genji
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.startFacing(directionTowards(eventPlayer, eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam()))), 1000, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)
    wait(0.25)
    eventPlayer.IsUsingHack = 1


