#!mainFile "../../main.opy"

#!include "heroes/illari/illaristopult.opy"
#!include "heroes/illari/illaristartult.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[illari/illariforceult.opy] illari force ult":
    @Event eachPlayer
    @Hero illari
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    eventPlayer.setUltCharge(100)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(0.25)
    eventPlayer.IsUsingHack = 1


