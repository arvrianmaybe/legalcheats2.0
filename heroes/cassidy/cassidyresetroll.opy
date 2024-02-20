#!mainFile "../../main.opy"

rule "[cassidyresetroll.opy] Roll Reset":
    @Event playerEarnedElimination
    @Hero mccree
    
    eventPlayer.setAbilityCooldown(Button.ABILITY_1, 0)