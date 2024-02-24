#!mainFile "../../main.opy"

rule "[mauga/maugadisallow.opy] disallow cause overpy broke :(":
    @Event eachPlayer
    @Hero mauga
    
    eventPlayer.setPrimaryFireEnabled(false)
    eventPlayer.setSecondaryFireEnabled(false)