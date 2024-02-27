#!mainFile "../../main.opy"

rule "[sombrahud/sombrahud.opy] sombra hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.SOMBRA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} ULT DDOS ANYONE disabled by default, INTERACTING WILL MAKE YOU INVIS".format(heroIcon(Hero.SOMBRA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)