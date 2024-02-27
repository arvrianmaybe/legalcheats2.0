#!mainFile "../../main.opy"

rule "[brigittehud/brigittehud.opy] brigitte hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.BRIGITTE
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} PRESSING INTERACT RESSURECTS PLAYER CLOSEST TO YOU".format(heroIcon(Hero.BRIGITTE)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)