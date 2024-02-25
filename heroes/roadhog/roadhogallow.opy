#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[roadhog/roadhogallow.opy] roadhog Allow Cheats":
    @Event eachPlayer
    @Hero roadhog
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setInvisibility(Invis.NONE)
    wait(0.2)
    eventPlayer.IsUsingHack = 0


