#Player variables

playervar IsUsingHack 3


rule "[mei/meistop.opy] mei stop":
    @Event eachPlayer
    @Hero mei
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    eventPlayer.setDamageDealt(100)
    eventPlayer.stopScalingSize()
    wait(0.25)
    eventPlayer.IsUsingHack = 0


