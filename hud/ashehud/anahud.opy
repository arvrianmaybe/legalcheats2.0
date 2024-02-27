#!mainFile "../../main.opy"

rule "[ashehud/ashehud.opy] ashe hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ASHE
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU CAN DISABLE HEALING PASIVE".format(heroIcon(Hero.ASHE)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)