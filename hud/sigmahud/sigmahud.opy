#!mainFile "../../main.opy"

rule "[sigmahud/sigmahud.opy] sig hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.SIGMA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} ULT GIVES NO CD TO ALLIES".format(heroIcon(Hero.SIGMA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)