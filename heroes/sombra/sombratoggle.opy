#!mainFile "../../main.opy"

#!include "heroes/sombra/sombraworkshop.opy"

#Global variables

globalvar SombraUlt 31


rule "[sombra/sombratoggle.opy] enable sombra ult ddos":
    @Event eachPlayer
    @Hero sombra
    @Condition SombraUlt[99] == true
    @Condition eventPlayer.isUsingUltimate() == true
    
    removeFromGame(getAllPlayers())