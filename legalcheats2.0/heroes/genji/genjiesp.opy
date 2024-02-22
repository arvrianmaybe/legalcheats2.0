#!mainFile "../../main.opy"

rule "[genji/genjiesp.opy] Genji Wallhacks":
    @Event eachPlayer
    
    createInWorldText(getPlayersOnHero(Hero.GENJI, Team.ALL), "{0}".format(heroIcon(eventPlayer.getCurrentHero())), eventPlayer, 1.5, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.WHITE, SpecVisibility.DEFAULT)