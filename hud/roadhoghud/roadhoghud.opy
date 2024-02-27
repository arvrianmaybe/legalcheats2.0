#!mainFile "../../main.opy"

rule "[roadhoghud/roadhoghug.opy] hog hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ROADHOG
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} INCREASED DMG WHEN INTERACTING".format(heroIcon(Hero.ROADHOG)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)