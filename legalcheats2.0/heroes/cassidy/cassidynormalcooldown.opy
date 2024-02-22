#!mainFile "../../main.opy"

#Player variables
playervar Cassidydoubleroll 9


rule "[cassidy/cassidynormalcooldown.opy] Cassidy Normal Cooldown":
    @Event eachPlayer
    @Hero mccree
    @Condition eventPlayer.Cassidydoubleroll >= 2
    
    wait(0.2)
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, 6)
    wait(6)
    eventPlayer.Cassidydoubleroll = 0