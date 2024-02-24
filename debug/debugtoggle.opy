#Global variables

globalvar Workshop_Settings 29


rule "[debug/debugtoggle.opy] debug toggle":
    @Event eachPlayer
    @Condition Workshop_Settings[99] == true
    
    hudSubtext(eventPlayer, "Player Vector:", HudPosition.LEFT, -999, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader(eventPlayer, eventPlayer.getPosition(), HudPosition.LEFT, -998, Color.YELLOW, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer if Workshop_Settings[99] == true else null, " ", HudPosition.LEFT, -997, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Player Facing Direction:", HudPosition.LEFT, -996, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader(eventPlayer, eventPlayer.getFacingDirection(), HudPosition.LEFT, -995, Color.ORANGE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer if Workshop_Settings[99] == true else null, " ", HudPosition.LEFT, -994, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubtext(eventPlayer, "Ray Cast Hit Position:", HudPosition.LEFT, -993, Color.AQUA, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudSubheader(eventPlayer, raycast(eventPlayer.getEyePosition(), eventPlayer.getEyePosition() + eventPlayer.getFacingDirection() * 10000, null, eventPlayer, false).getHitPosition(), HudPosition.LEFT, -992, Color.AQUA, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)
    hudHeader(getAllPlayers(), "{0}".format(getPeakServerLoad()), HudPosition.LEFT, 0, Color.WHITE, HudReeval.VISIBILITY_AND_STRING, SpecVisibility.DEFAULT)