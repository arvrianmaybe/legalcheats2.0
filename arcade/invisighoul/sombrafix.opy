#!mainFile "../../main.opy"

#Global variables

globalvar invisighoul 39

#Player variables

playervar IsUsingHack 3


rule "[sombra/sombraallow.opy] sombra Allow Cheats":
    @Event eachPlayer
    @Hero sombra
    @Condition eventPlayer.IsUsingHack == 1
    @Condition invisighoul[99] == true
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setInvisibility(Invis.ALL)
    wait(0.2)
    eventPlayer.IsUsingHack = 0