#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3

rule "[bastion/bastiontpandout.opy] init bastion":
    @Event eachPlayer
    @Hero bastion
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    eventPlayer.teleport(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())))
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).getEyePosition()), Relativity.TO_WORLD)
    wait()
    eventPlayer.forceButtonPress(Button.MELEE)
    getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).setStatusEffect(eventPlayer, Status.STUNNED, 0.35)
    damage(getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())), eventPlayer, 150)
    wait(0.15)
    eventPlayer.teleport(getClosestPlayer(eventPlayer, eventPlayer.getTeam()))
    wait()
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).getEyePosition()), Relativity.TO_WORLD)