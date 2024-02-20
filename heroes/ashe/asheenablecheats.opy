#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[heroes/ashe/asheenablecheats]Ashe Enable Passive":
    @Event eachPlayer
    @Hero ashe
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    wait(0.2)
    eventPlayer.IsUsingHack = 1