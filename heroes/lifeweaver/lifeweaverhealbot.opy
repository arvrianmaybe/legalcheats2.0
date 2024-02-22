#!mainFile "../../main.opy"

rule "[lifeweaver/lifeweaverhealbot.opy] bot heal botting":
    @Event eachPlayer
    @Hero lifeweaver
    @Condition eventPlayer.isDummy() == true
    @Condition distance(eventPlayer, getClosestPlayer(eventPlayer, eventPlayer.getTeam())) < 15
    
    eventPlayer.startForcingButton(Button.PRIMARY_FIRE)
    wait(1.5)
    eventPlayer.stopForcingButton(Button.PRIMARY_FIRE)
    if RULE_CONDITION:
        goto RULE_START


