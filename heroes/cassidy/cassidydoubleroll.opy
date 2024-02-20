#!mainFile "../../main.opy"

#!include "heroes/cassidy/cassidynormalcooldown.opy"
#!include "heroes/cassidy/cassidystartroll.opy"
#!include "heroes/cassidy/cassidyresetroll.opy"

#Player variables

playervar Cassidydoubleroll 9


rule "[cassidy/cassidydoubleroll.opy] Cassidy Double Roll Add":
    @Event eachPlayer
    @Hero mccree
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition eventPlayer.Cassidydoubleroll <= 1
    
    wait(0.18)
    eventPlayer.Cassidydoubleroll = eventPlayer.Cassidydoubleroll + 1