#!mainFile "../../main.opy"

rule "[symmetrahud/symmetrahud.opy] symmetra hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.SYMMETRA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} ULT DDOS ANYONE disabled by default, INTERACTING WILL MAKE YOU INVIS".format(heroIcon(Hero.SYMMETRA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)