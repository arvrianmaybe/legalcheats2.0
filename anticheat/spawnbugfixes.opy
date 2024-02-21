#!mainFile "../main.opy"

#Player variables

playervar HackDetection 2

rule "[spawnbugfixes.opy] bug fixes for spawn":
    @Event eachPlayer
    @Condition eventPlayer.isInSpawnRoom() == true
    
    getAllPlayers().stopForcingOutlineFor(eventPlayer)
    eventPlayer.HackDetection = 1