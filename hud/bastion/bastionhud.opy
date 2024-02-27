#!mainFile "../../main.opy"

rule "[bastionhud/bastionhud.opy] bastion hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.BASTION
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT TPS YOU TO THE PERSON CLOSEST TO YOU AND DMG THEM AND TP BACK".format(heroIcon(Hero.BASTION)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)