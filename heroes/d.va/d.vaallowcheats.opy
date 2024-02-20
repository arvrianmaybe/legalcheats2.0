#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3

rule "[d.va/asheallowscheats.opy] D.va Allow Cheats":
    @Event eachPlayer
    @Hero dva
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setDamageReceived(0)
    wait(0.2)
    eventPlayer.IsUsingHack = 0


