#!mainFile "../../main.opy"

rule "[lifeweaver/lifeweaverdummbyotwalk.opy] dummybot walk and face":
    @Event eachPlayer
    @Condition eventPlayer.isDummy() == true
    
    eventPlayer.startThrottleInDirection(directionTowards(eventPlayer, getClosestPlayer(eventPlayer, eventPlayer.getTeam())), 1, Relativity.TO_WORLD, Throttle.REPLACE_EXISTING, ThrottleReeval.DIRECTION_AND_MAGNITUDE)
    eventPlayer.startFacing(directionTowards(eventPlayer, getClosestPlayer(eventPlayer, eventPlayer.getTeam())), 100, Relativity.TO_WORLD, FacingReeval.DIRECTION_AND_TURN_RATE)