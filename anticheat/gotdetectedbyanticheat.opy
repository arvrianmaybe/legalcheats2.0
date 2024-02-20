#!mainFile "../../main.opy"
#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4
playervar TorbTarget 5



rule "[gotdetectedbyanticheat.opy] Detected By Anti-Cheat ":
    @Event eachPlayer
    @Condition eventPlayer.HackDetection <= 0
    
    eventPlayer.TorbTarget = 0
    eventPlayer.setDamageDealt(100)
    eventPlayer.stopScalingSize()
    eventPlayer.setMoveSpeed(100)
    eventPlayer.stopFacing()
    getPlayers(getOppositeTeam(eventPlayer.getTeam())).stopForcingOutlineFor(eventPlayer)
    eventPlayer.enableEnvironmentCollision()
    eventPlayer.setStatusEffect(null, Status.HACKED, 10)
    eventPlayer.IsUsingHack = 0
    eventPlayer.LockOut = 1
    eventPlayer.stopCamera()
    wait(10)
    eventPlayer.LockOut = 0
