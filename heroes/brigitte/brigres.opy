#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2


rule "[brig/brigres.opy] Brig Res":
    @Event eachPlayer
    @Hero brigitte
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = -1
    getClosestPlayer(eventPlayer.getPosition(), eventPlayer.getTeam()).resurrect()


