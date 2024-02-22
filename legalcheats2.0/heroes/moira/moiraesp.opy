#!mainFile "../../main.opy"

rule "[moira/moiraesp.opy] moira esp 2.0":
    @Event eachPlayer
    
    createInWorldText(getPlayersOnHero(Hero.MOIRA, Team.ALL), "{0}{1}".format(heroIcon(eventPlayer.getCurrentHero()), updateEveryTick(getPlayersOnHero(eventPlayer.getCurrentHero(), Team.ALL).getUltCharge())), eventPlayer, 1.5, Clip.NONE, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.WHITE, SpecVisibility.DEFAULT)