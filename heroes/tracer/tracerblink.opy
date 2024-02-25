#!mainFile "../../main.opy"

#!include "heroes/tracer/tracerrecall.opy"

rule "[tracer/tracerblink.opy] tracer controls time":
    @Event eachPlayer
    @Hero tracer
    @Condition eventPlayer.isUsingAbility1() == true
    
    setMatchTime(getMatchTime() + 8)