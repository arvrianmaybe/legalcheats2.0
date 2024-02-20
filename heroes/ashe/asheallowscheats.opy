#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3

rule "[heroes/ashe/asheallowscheats.opy] Ashe Allow Cheats":
    @Event eachPlayer
    @Hero ashe
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    wait(0.2)
    eventPlayer.IsUsingHack = 0