#!mainFile "../../main.opy"

#!include "heroes/juunkerqueen/junkerqueenlost.opy"
#!include "heroes/junkerqueen/junkerqueenwon.opy"
#Player variables

playervar Duel 0
playervar IsDueling 1
playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[junkerqueen/junkerqueensumo.opy] junker queen sumo fight":
    @Event eachPlayer
    @Hero junkerQueen
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = 1
    eventPlayer.setUltEnabled(false)
    wait(0.1)
    eventPlayer.Duel[0] = eventPlayer.getPlayerClosestToReticle(getOppositeTeam(eventPlayer.getTeam()))
    eventPlayer.IsDueling = true
    eventPlayer.Duel[0].setHealth(eventPlayer.Duel[0].getMaxHealth())
    eventPlayer.setHealth(eventPlayer.getMaxHealth())
    bigMessage(getAllPlayers(), "{0} targeted {1}".format("{0} {1}".format(heroIcon(eventPlayer.getCurrentHero()), eventPlayer), "{0} {1}".format(heroIcon(eventPlayer.Duel[0].getCurrentHero()), eventPlayer.Duel[0])))
    eventPlayer.cancelPrimaryAction()
    #look at duel
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), eventPlayer.Duel[0].getEyePosition()), Relativity.TO_WORLD)
    #look at cre
    eventPlayer.Duel[0].setFacing(directionTowards(eventPlayer.Duel[0].getEyePosition(), eventPlayer.getEyePosition()), Relativity.TO_WORLD)
    #icon at duel
    createIcon(getAllPlayers(), eventPlayer.Duel[0], Icon.SKULL, IconReeval.VISIBILITY_AND_POSITION, getOppositeTeam(eventPlayer.getTeam()), true)
    eventPlayer.Duel[1] = getLastCreatedEntity()
    #icon cas
    createIcon(getAllPlayers(), eventPlayer, Icon.SKULL, IconReeval.VISIBILITY_AND_POSITION, eventPlayer.getTeam(), true)
    eventPlayer.Duel[2] = getLastCreatedEntity()
    #dont take damage cas
    startDamageModification(eventPlayer, [player for player in getPlayers(getOppositeTeam(eventPlayer.getTeam())) if player != eventPlayer.Duel[0]], 0, DamageReeval.RECEIVERS_DAMAGERS_AND_DMGPERCENT)
    eventPlayer.Duel[3] = getLastDamageModification()
    #dont take damage duel
    startDamageModification(eventPlayer.Duel[0], [player for player in getPlayers(eventPlayer.getTeam()) if player != eventPlayer], 0, DamageReeval.RECEIVERS_DAMAGERS_AND_DMGPERCENT)
    eventPlayer.Duel[4] = getLastDamageModification()
    #dont get heals cas
    startHealingModification(eventPlayer, getPlayers(eventPlayer.getTeam()), 0, HealingReeval.RECEIVERS_HEALERS_AND_HEALPERCENT)
    eventPlayer.Duel[5] = getLastHealingModification()
    #dont get heals duel
    startHealingModification(eventPlayer.Duel[0], getPlayers(eventPlayer.Duel[0].getTeam()), 0, HealingReeval.RECEIVERS_HEALERS_AND_HEALPERCENT)
    eventPlayer.Duel[6] = getLastHealingModification()
    #dont deal damage cas
    startDamageModification([player for player in getPlayers(getOppositeTeam(eventPlayer.getTeam())) if player != eventPlayer.Duel[0]], eventPlayer, 0, DamageReeval.RECEIVERS_DAMAGERS_AND_DMGPERCENT)
    eventPlayer.Duel[7] = getLastDamageModification()
    #dont deal damage duel
    startDamageModification([player for player in getPlayers(eventPlayer.getTeam()) if player != eventPlayer], eventPlayer.Duel[0], 0, DamageReeval.RECEIVERS_DAMAGERS_AND_DMGPERCENT)
    eventPlayer.Duel[8] = getLastDamageModification()
    waitUntil(eventPlayer.IsDueling == false, 20)
    destroyIcon(eventPlayer.Duel[1])
    destroyIcon(eventPlayer.Duel[2])
    stopDamageModification(eventPlayer.Duel[3])
    stopDamageModification(eventPlayer.Duel[4])
    stopHealingModification(eventPlayer.Duel[5])
    stopHealingModification(eventPlayer.Duel[6])
    stopDamageModification(eventPlayer.Duel[7])
    stopDamageModification(eventPlayer.Duel[8])
    bigMessage(getAllPlayers(), " {0} targeted {1} is over".format("{0} {1}".format(heroIcon(eventPlayer.getCurrentHero()), eventPlayer), "{0} {1}".format(heroIcon(eventPlayer.Duel[0].getCurrentHero()), eventPlayer.Duel[0])))
    eventPlayer.setUltEnabled(true)
    wait(0.25)
    eventPlayer.IsUsingHack = 1