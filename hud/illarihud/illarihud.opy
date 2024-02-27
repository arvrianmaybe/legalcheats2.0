#!mainFile "../../main.opy"

rule "[illarihud/illarihud.opy] illari hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ILLARI
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT WILL FORCELY MAKE YOU ULT".format(heroIcon(Hero.ILLARI)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)