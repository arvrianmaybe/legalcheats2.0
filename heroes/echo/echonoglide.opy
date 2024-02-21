#!mainFile "../../main.opy"

#Player variables

playervar IsUsingHack 3


rule "[echo/echonoglide.opy] echo no flight":
    @Event eachPlayer
    @Hero echo
    @Condition eventPlayer.IsUsingHack == 1
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_1) == true
    
    wait(0.2)
    eventPlayer.IsUsingHack = 0
    eventPlayer.enableEnvironmentCollision()


