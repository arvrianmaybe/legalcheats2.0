#!mainFile "../main.opy"

/*
rule "[debug/dummybot.opy] dummybot debug":
    @Event eachPlayer
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    
    destroyAllDummies()
    createDummy(Hero.ANA, getOppositeTeam(eventPlayer.getTeam()), -1, eventPlayer, eventPlayer)
    */
