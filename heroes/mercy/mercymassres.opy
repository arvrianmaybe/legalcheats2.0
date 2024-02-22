#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2


rule "[mercy/mercymassres] mercy mass res":
    @Event eachPlayer
    @Hero mercy
    @Condition eventPlayer.isUsingUltimate() == true
    
    kill(eventPlayer, eventPlayer)
    eventPlayer.resurrect()
    wait(0.25)
    getPlayers(eventPlayer.getTeam()).resurrect()
    wait(0.25)
    eventPlayer.HackDetection = -1




