#!mainFile "../../main.opy"

#Global variables

globalvar Totalmayhem 33


#Player variables

playervar Cassidydoubleroll 9
playervar LucioBoosting 10


rule "[arcade/lucioboostfix.opy] lucio total mayhem fix":
    @Event eachPlayer
    @Condition eventPlayer.LucioBoosting == 1
    @Condition Totalmayhem[99] == true
    #@Condition eventPlayer.getCurrentHero() != Hero.LUCIO
    
    eventPlayer.startScalingSize(1.4, true)
    eventPlayer.startScalingBarriers(1.4, true)
    eventPlayer.setDamageDealt(200)
    heal(eventPlayer, null, 90)
    wait(4)
    eventPlayer.startScalingSize(1.2, true)
    eventPlayer.setDamageDealt(175)
    eventPlayer.Cassidydoubleroll = 0