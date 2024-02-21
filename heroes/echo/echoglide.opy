#!mainFile "../../main.opy"

#!include "heroes/echo/echoglidestart.opy"
#!include "heroes/echo/echoheroswap.opy"
#!include "heroes/echo/echonoglide.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[echo/echoglide.opy] echo hack flight":
    @Event eachPlayer
    @Hero echo
    @Condition eventPlayer.IsUsingHack == 0
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_1) == true
    @Condition eventPlayer.HackDetection != 0
    @Condition eventPlayer.LockOut == 0
    
    wait(0.2)
    eventPlayer.disableEnvironmentCollision(true)
    eventPlayer.IsUsingHack = 1