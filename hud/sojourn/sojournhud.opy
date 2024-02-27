#!mainFile "../../main.opy"

rule "[sojournhud/sojournhud.opy] sojourn hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.SOJOURN
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} INCREASED DMG WHEN INTERACTING".format(heroIcon(Hero.SOJOURN)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)