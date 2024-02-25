#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[soldier/soldierstop.opy] soldier stop":
    @Event eachPlayer
    @Hero soldier
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.stopFacing()
    wait(0.25)
    eventPlayer.IsUsingHack = 0