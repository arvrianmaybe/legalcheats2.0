#!mainFile "../../main.opy"

#!mainFile "../../main.opy"

rule "[reaperhud/reaperhud.opy] reaper hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.REAPER
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} INTERACTING WILL TP YOU TO YOURE RETICLE AND YOU CAN SELF RES".format(heroIcon(Hero.REAPER)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)