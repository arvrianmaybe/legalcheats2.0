#!mainFile "../../main.opy"

rule "[kirikohud/kirikohud.opy] kiriko hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.KIRIKO
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} ULT WILL GIVE YOUR TEAMMATES NO CD".format(heroIcon(Hero.KIRIKO)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)