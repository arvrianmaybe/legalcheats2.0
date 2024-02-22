#!mainFile "../../main.opy"

rule "[mauga/maugacastfire.opy] mauga cast fire":
    @Event playerDealtDamage
    @Hero mauga
    @Condition eventPlayer.isHoldingButton(Button.PRIMARY_FIRE) == true
    @Condition eventPlayer.hasStatusEffect(Status.FROZEN) == false
    @Condition eventPlayer.hasStatusEffect(Status.STUNNED) == false
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isAlive() == true
    @Condition eventPlayer.isCommunicatingEmote() == false
    
    wait(1.2, Wait.ABORT_WHEN_FALSE)
    victim.setStatusEffect(eventPlayer, Status.BURNING, 5)
    eventPlayer.startDoT(null, 5, 7)


