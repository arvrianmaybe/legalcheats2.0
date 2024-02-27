#!mainFile "../../main.opy"

rule "[anahud/anahud.opy] ana hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ANA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE DOUBLE SLEEP".format(heroIcon(Hero.ANA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)