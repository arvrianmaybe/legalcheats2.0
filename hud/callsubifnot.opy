#!mainFile "../../main.opy"

#!include "hud/destroyhud.opy"

#Subroutine names

subroutine destroyhud 3


rule "[hud/callsubifnot.opy] abort if not in spawn":
    @Event eachPlayer
    @Condition eventPlayer.isInSpawnRoom() == false
    
    destroyhud()