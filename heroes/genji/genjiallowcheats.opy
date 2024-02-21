#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[genji/genjiallowscheats.opy] Genji Allow Cheats":
    @Event eachPlayer
    @Hero genji
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.stopForcingButton(Button.SECONDARY_FIRE)
    eventPlayer.stopFacing()
    wait(0.25)
    eventPlayer.IsUsingHack = 0