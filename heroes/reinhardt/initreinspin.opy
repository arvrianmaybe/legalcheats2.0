#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar Spinning 17


rule "[reinhardt/initreinspin.opy] init rein":
    @Event eachPlayer
    @Hero reinhardt
    @Condition eventPlayer.HackDetection >= 100
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.HackDetection = 2
    wait(1.5)
    eventPlayer.Spinning = 0