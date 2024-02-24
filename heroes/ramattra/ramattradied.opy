#!mainFile "../../main.opy"

#!include "heroes/rammatra/rammatrasoloult.opy"
#!include "heroes/rammatra/rammatraeliminate.opy"

#Player variables

playervar Duel 0
playervar IsDueling 1


rule "[rammatra/rammatradied.opy] rammatra lost":
    @Event playerDied
    @Hero rammatra
    @Condition eventPlayer.IsDueling == true
    
    eventPlayer.IsDueling = false