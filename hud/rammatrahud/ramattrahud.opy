#!mainFile "../../main.opy"

rule "[ramattrahud/ramattrahud.opy] ramattra hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.RAMATTRA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU CAN SOLO ULT PEOPLE ".format(heroIcon(Hero.RAMATTRA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)