#!mainFile "../../main.opy"

#!include "heroes/pharah/pharahenable.opy"
#!include "heroes/pharah/pharahdisable.opy"
#!include "heroes/pharah/initpharah.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[pharah/pharahnerf.opy]pharah nerf heroes":
    @Event eachPlayer
    @Hero pharah
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    wait(0.2)
    eventPlayer.IsUsingHack = 1


