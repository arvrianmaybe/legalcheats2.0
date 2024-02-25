#!mainFile "../../main.opy"

#!include "heroes/reinhardt/initreinspin.opy"

#Player variables

playervar HackDetection 2
playervar Spinning 17

#code from kendlr

rule "[reinhardt/reinhardtspin.opy] rein spin":
    @Event eachPlayer
    @Hero reinhardt
    @Condition eventPlayer.HackDetection >= 100
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.Spinning = 1
    eventPlayer.startForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.Q = eventPlayer.getFacingDirection()
    eventPlayer.V = 200
    eventPlayer.startFacing(Vector.UP + vect(5, 0, 0), eventPlayer.V, Relativity.TO_PLAYER, FacingReeval.DIRECTION_AND_TURN_RATE)
    eventPlayer.setPrimaryFireEnabled(false)
    while eventPlayer.Spinning == 1:
        eventPlayer.V += 100
        wait()
    eventPlayer.setFacing(Vector.UP, Relativity.TO_WORLD)
    wait()
    createHomingProjectile(Projectile.REINHARDT_FIRE_STRIKE, eventPlayer, null, Vector.UP, Relativity.TO_WORLD, ModifyHealth.DAMAGE, getOppositeTeam(eventPlayer.getTeam()), 100, 1, 5, DynamicEffect.BAD_EXPLOSION, DynamicEffect.EXPLOSION_SOUND, 0, 50, 5, 10, getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())), 1)
    eventPlayer.stopFacing()
    eventPlayer.setFacing(eventPlayer.Q, Relativity.TO_WORLD)
    eventPlayer.setPrimaryFireEnabled(true)
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)