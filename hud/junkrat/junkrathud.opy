#!mainFile "../../main.opy"

rule "[junkrat/junkrathud.opy] junk hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.JUNKRAT
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT WILL GIVE YOU A PEAK AT ENEMYS SCREENS".format(heroIcon(Hero.JUNKRAT)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)