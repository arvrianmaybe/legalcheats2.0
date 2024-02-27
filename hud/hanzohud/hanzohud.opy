#!mainFile "../../main.opy"

rule "[hanzohud/hanzohud.opy] hanzo hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.HANZO
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT WILL USE ALL OF AN ENEMIES ABILITYS".format(heroIcon(Hero.HANZO)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)