#!mainFile "../../main.opy"

rule "[tracer/tracerrecall.opy] tracer recall rewind time":
    @Event eachPlayer
    @Hero tracer
    @Condition eventPlayer.isUsingAbility2() == true
    
    setMatchTime(getMatchTime() + -3)