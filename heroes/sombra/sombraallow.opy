#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[sombra/sombraallow.opy] sombra Allow Cheats":
    @Event eachPlayer
    @Hero sombra
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setInvisibility(Invis.NONE)
    wait(0.2)
    eventPlayer.IsUsingHack = 0