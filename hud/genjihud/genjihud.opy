#!mainFile "../../main.opy"

rule "[genjihud/genjihud.opy] genji hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.GENJI
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} YOU HAVE WALL HACKS, INTERACT WILL GIVE YOU AIMBOT AND AUTOAIM FOR YOU".format(heroIcon(Hero.GENJI)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)