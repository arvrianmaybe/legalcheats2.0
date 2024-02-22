#!mainFile "../../main.opy"

rule "[d.va/d.vadmgfix] dmg fix d.va":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() != Hero.DVA
    
    eventPlayer.removeAllHealthPools()
    eventPlayer.allowButton(Button.ABILITY_2)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.ABILITY_1)
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.setDamageDealt(100)
    eventPlayer.setDamageReceived(100)
    eventPlayer.setMoveSpeed(100)
    eventPlayer.setKnockbackReceived(100)
