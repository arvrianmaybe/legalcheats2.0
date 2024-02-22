#Player variables

playervar LucioBoosting 9


rule "[lucio/lucioboostart.opy] start boost":
    @Event eachPlayer
    @Condition eventPlayer.LucioBoosting == 1
    @Condition eventPlayer.getCurrentHero() != Hero.LUCIO
    
    eventPlayer.startScalingSize(1.5, true)
    eventPlayer.startScalingBarriers(1.5, true)
    eventPlayer.setDamageDealt(150)
    heal(eventPlayer, null, 45)
    wait(4)
    eventPlayer.stopScalingBarriers()
    eventPlayer.stopScalingSize()
    eventPlayer.setDamageDealt(100)
    eventPlayer.LucioBoosting = 0