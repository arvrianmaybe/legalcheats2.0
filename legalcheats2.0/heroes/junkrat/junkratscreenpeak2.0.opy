#!mainFile "../../main.opy"

#!include "heroes/junkrat/junkstop.opy"
#!include "heroes/junkrat/junkinit.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[junrat/junkratscreenpeak2.0.opy] junk screen peak 2.0":
    @Event eachPlayer
    @Hero junkrat
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    hudText(localPlayer if eventPlayer.HackDetection == true else null, "{0}".format(heroIcon(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).getCurrentHero())), "{0} Current Health Is {1}".format(updateEveryTick(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).getCurrentHero()), updateEveryTick(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).getHealth())), null, HudPosition.LEFT, 0, Color.WHITE, Color.WHITE, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    eventPlayer.startCamera(raycast(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).getEyePosition(), eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())).getEyePosition() + vect(3, 3, 3), [], eventPlayer, true).getHitPosition(), eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())), 15)
    wait(0.25)
    eventPlayer.IsUsingHack = 1


