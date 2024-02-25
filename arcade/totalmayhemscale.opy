#Global variables

globalvar Totalmayhem 33


rule "[arcade/totalmayhemscale.opy] total mayhem scale":
    @Event eachPlayer
    @Condition Totalmayhem[99] == true
    
    eventPlayer.startScalingSize(1.2, true)
    eventPlayer.setMoveSpeed(100)