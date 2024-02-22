#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[illaristopult.opy] illari abort ult":
    @Event eachPlayer
    @Hero illari
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setUltCharge(0)
    wait(0.25)
    eventPlayer.IsUsingHack = 0


