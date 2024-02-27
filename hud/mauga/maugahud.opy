#!mainFile "../../main.opy"

rule "[maugahud/maugahud.opy] mauga hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.MAUGA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE AIMBOT ".format(heroIcon(Hero.MAUGA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)