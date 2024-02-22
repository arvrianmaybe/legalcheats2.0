#!mainFile "../../main.opy"

#!include "heroes/lifeweaver/lifeweaverhealbot.opy"
#!include "heroes/lifeweaver/lifeweaverdummybotwalk.opy"
#!include "heroes/lifeweaver/initlifeweaverpull.opy"
#!include "heroes/lifeweaver/initlifeweaverbot.opy"



#Player variables

playervar Lifeweaver 25


rule "[lifeweaver/lifeweaverpull.opy] lifeweaver has rizz (real?)":
    @Event eachPlayer
    @Hero lifeweaver
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_2) == true
    @Condition eventPlayer.getAbilityCooldown(Button.ABILITY_2) == 0
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.Lifeweaver[0] = eventPlayer.getPlayerClosestToReticle(Team.ALL)
    if not isInLoS(eventPlayer.Lifeweaver[0], eventPlayer, BarrierLos.PASS_THROUGH_BARRIERS):
        return
    createEffect(getAllPlayers(), Effect.SPHERE, Color.ROSE, eventPlayer.Lifeweaver[0], 1.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    eventPlayer.Lifeweaver[1] = getLastCreatedEntity()
    eventPlayer.Lifeweaver[0].setGravity(0)
    eventPlayer.setMoveSpeed(50)
    while distance(eventPlayer, eventPlayer.Lifeweaver[0]) >= 3:
        wait(0.1)
        eventPlayer.Lifeweaver[0].applyImpulse(directionTowards(eventPlayer.Lifeweaver[0], eventPlayer), 20, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
        if not isInLoS(eventPlayer.Lifeweaver[0], eventPlayer, BarrierLos.PASS_THROUGH_BARRIERS):
            break
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, 16)
    destroyEffect(eventPlayer.Lifeweaver[1])
    eventPlayer.setMoveSpeed(100)
    eventPlayer.Lifeweaver[0].setGravity(100)
    bigMessage(getAllPlayers(), "{0} rizz up {1}".format("{0} {1}".format(heroIcon(eventPlayer.getCurrentHero()), eventPlayer), "{0} {1}".format(heroIcon(eventPlayer.Lifeweaver[0].getCurrentHero()), eventPlayer.Lifeweaver[0])))
    wait(0.25)


