#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


#Player variables

playervar HackDetection 2


/*
rule "Kiriko Does A Dead By Daylight Cheater":
    @Event eachPlayer
    @Hero kiriko
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    eventPlayer.teleport(eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())))
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).getEyePosition()), Relativity.TO_WORLD)
    wait()
    eventPlayer.forceButtonPress(Button.MELEE)
    getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).setStatusEffect(eventPlayer, Status.STUNNED, 0.35)
    wait(0.15)
    eventPlayer.teleport(getClosestPlayer(eventPlayer, eventPlayer.getTeam()))
    wait()
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).getEyePosition()), Relativity.TO_WORLD)
*/
