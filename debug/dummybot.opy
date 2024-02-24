#!mainFile "../main.opy"

#Global variables

globalvar Workshop_Settings 29

rule "[debug/dummybot.opy] dummybot debug":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.isHoldingButton(Button.ABILITY_1) == true
    @Condition Workshop_Settings[99] == true
    
    destroyAllDummies()
    createDummy(Hero.ANA, getOppositeTeam(eventPlayer.getTeam()), -1, eventPlayer, eventPlayer)