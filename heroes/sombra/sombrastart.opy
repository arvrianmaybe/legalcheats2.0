#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4

rule "[sombra/sombrastart.opy] sombra start":
    @Event eachPlayer
    @Hero sombra
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    eventPlayer.setInvisibility(Invis.ENEMIES)
    wait(0.2)
    eventPlayer.IsUsingHack = 1