#!mainFile "../../main.opy"

#Player Variables
playervar Cassidydoubleroll 9

rule "[cassidy/cassidystartroll.opy] Cassidy Init Double Combat-Roll":
    @Event eachPlayer
    @Hero mccree
    @Condition eventPlayer.Cassidydoubleroll == 1
       
    wait(0.2)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, 0)