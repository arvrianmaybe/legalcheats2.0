#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[pharah/pharahdisable.opy]pharah disable cheats":
    @Event eachPlayer
    @Hero pharah
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    getAllPlayers().setHealingReceived(100)
    getAllPlayers().setDamageDealt(100)
    getAllPlayers().stopScalingSize()
    wait(0.2)
    eventPlayer.IsUsingHack = 0