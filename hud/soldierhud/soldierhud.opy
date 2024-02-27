#!mainFile "../../main.opy"

rule "[soldierhud/soldierhud.opy] soldier hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.SOLDIER
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE AIMBOT WHEN INTERACTING".format(heroIcon(Hero.SOLDIER)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)