#!mainFile "../../main.opy"

#!include "heroes/mei/meistop.opy"
#!include "heroes/mauga/meienable.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[mei/meiturnsmall.opy] mei is short":
    @Event eachPlayer
    @Hero mei
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    eventPlayer.setDamageDealt(50)
    eventPlayer.startScalingSize(0.3, true)
    wait(0.25)
    eventPlayer.IsUsingHack = 1


