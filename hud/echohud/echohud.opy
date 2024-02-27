#!mainFile "../../main.opy"

rule "[echohud/echohud.opy] echo hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.ECHO
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} ULT TURNS YOU INTO CHARACTER AND ULT, GLIDE WILL GIVE YOU NO CLIP".format(heroIcon(Hero.ECHO)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)