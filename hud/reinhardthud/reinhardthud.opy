rule "[reinhhardthud/reinhardthud.opy] reinhardt hud":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() == Hero.REINHARDT
    @Condition eventPlayer.isInSpawnRoom() == true
    
    hudHeader(eventPlayer, "{0} INTERACTING WILL GIVE YOU A SPIN BOT FIRESTRIKE".format(heroIcon(Hero.REINHARDT)), HudPosition.TOP, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)