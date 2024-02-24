#!mainFile "../../main.opy"

rule "[mauga/maugadisallow.opy] disallow cause overpy broke :(":
    @Event eachPlayer
    @Hero mauga
    
    eventPlayer.setPrimaryFireEnabled(false)
    eventPlayer.setSecondaryFireEnabled(false)


rule "[mauga/notmauga.opy] abort mauga":
    @Event eachPlayer
    @Condition eventPlayer.getCurrentHero() != Hero.MAUGA
    
    eventPlayer.setPrimaryFireEnabled(true)
    eventPlayer.setSecondaryFireEnabled(true)