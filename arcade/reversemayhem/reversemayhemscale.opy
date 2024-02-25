#!mainFile "../../main.opy"

#Global variables

globalvar Reversemayhem 35

rule "[arcade/reversemayhemscale.opy] reverse mayhem scale":
    @Event eachPlayer
    @Condition Reversemayhem[99] == true
    
    eventPlayer.startScalingSize(0.5, true)
    eventPlayer.startScalingBarriers(0.5, true)
    eventPlayer.setMoveSpeed(100)