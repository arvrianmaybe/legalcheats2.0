#!mainFile "../../main.opy"

rule "[luciohud/luciohud.opy] lucio hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.LUCIO
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} AMP WILL INCREASED NEARBY ALLIES HEALTH".format(heroIcon(Hero.LUCIO)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)