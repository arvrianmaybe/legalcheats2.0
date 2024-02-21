#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[junkrat/junkstop.opy] junkrat stop ":
    @Event eachPlayer
    @Hero junkrat
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    destroyHudText(getLastCreatedText())
    eventPlayer.stopCamera()
    wait(0.25)
    eventPlayer.IsUsingHack = 0