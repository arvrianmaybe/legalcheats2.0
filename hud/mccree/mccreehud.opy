#!mainFile "../../main.opy"

rule "[mccreehud/mccreehud.opy] mccree hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.MCCREE
    @Condition eventPlayer.isInSpawnRoom() == true
    
    # ermm whos mccree?
    
    hudHeader(eventPlayer, "{0} YOU CAN DOUBLE DASH".format(heroIcon(Hero.MCCREE)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)