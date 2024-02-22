#!mainFile "../../main.opy"

rule "[mauga/maugaautoaimsecondaryfire.opy] mauga aimbot but bad secondary or both":
    @Event eachPlayer
    @Hero mauga
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true
    @Condition eventPlayer.hasStatusEffect(Status.FROZEN) == false
    @Condition eventPlayer.hasStatusEffect(Status.STUNNED) == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isDead() == false
    @Condition eventPlayer.isCommunicatingEmote() == false
    
    eventPlayer.setAmmo(0, eventPlayer.getAmmo(0) + -1)
    createHomingProjectile(Projectile.ROADHOG_SCRAP, eventPlayer, null, null, Relativity.TO_WORLD, ModifyHealth.DAMAGE, getOppositeTeam(eventPlayer.getTeam()), 0.7, 1, 0, DynamicEffect.BAD_EXPLOSION, DynamicEffect.EXPLOSION_SOUND, 0.4, 100, 5, 0, eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam())), 1)
    wait(0.1)
    if RULE_CONDITION:
        goto RULE_START