#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[sojourb/sojournallow.opy] sojourn Allow Cheats":
    @Event eachPlayer
    @Hero sojourn
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setInvisibility(Invis.NONE)
    wait(0.2)
    eventPlayer.IsUsingHack = 0