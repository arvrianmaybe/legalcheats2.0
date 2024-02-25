#!mainFile "../../main.opy"

#Global variables

globalvar Reversemayhem 35


#Player variables

playervar Cassidydoubleroll 9
playervar LucioBoosting 10


rule "[arcade/reverseluciofix.opy] lucio reverse mayhem fix":
    @Event eachPlayer
    @Condition eventPlayer.LucioBoosting == 1
    @Condition Reversemayhem[99] == true
    #@Condition eventPlayer.getCurrentHero() != Hero.LUCIO
    
    eventPlayer.startScalingSize(1, true)
    eventPlayer.startScalingBarriers(1.4, true)
    eventPlayer.setDamageDealt(100)
    heal(eventPlayer, null, 90)
    wait(4)
    eventPlayer.startScalingSize(0.5, true)
    eventPlayer.setDamageDealt(100)
    eventPlayer.Cassidydoubleroll = 0