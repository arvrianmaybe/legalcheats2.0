#!mainFile "../../main.opy"

#!include "heroes/orisa/orisatoggle.opy"

#Global variables

globalvar Orisalag 34

rule "[orisa/orisafakelag.opy] orisa fake lag":
    @Event eachPlayer
    @Condition Orisalag[99] == true
    @Hero orisa
    
    eventPlayer.startForcingPosition(nearestWalkablePosition(eventPlayer.getPosition() + vect(random.uniform(-5, 5), 0, random.uniform(-5, 5))), true)
    wait()
    eventPlayer.stopForcingPosition()
    wait(1.6)
    goto RULE_START