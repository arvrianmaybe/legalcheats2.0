#!mainFile "../../main.opy"

rule "[junkerqueen/junkerqueenhud.opy] jq hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.JUNKER_QUEEN
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT WILL START A DUEL".format(heroIcon(Hero.JUNKER_QUEEN)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)