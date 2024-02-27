#!mainFile "../../main.opy"

rule "[orisahud/orisahud.opy] orisa hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ORISA
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE AIMBOT ".format(heroIcon(Hero.ORISA)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)