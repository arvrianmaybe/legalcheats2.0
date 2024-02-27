#!mainFile "../../main.opy"

rule "[doomhud/doomhud.opy] doomfist hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.DOOMFIST
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE A MACRO".format(heroIcon(Hero.DOOMFIST)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)