#!mainFile "../../main.opy"

#!include "heroes/ana/ananormalcooldown"
#!include "heroes/ana/anadoublesleep"

#Player variables

playervar Anadoublesleepdart 1


rule "[ana/anadone.opy] Ana Add One ":
    @Event eachPlayer
    @Hero ana
    @Condition eventPlayer.isUsingAbility1() == true
    @Condition eventPlayer.Anadoublesleepdart <= 1
    
    wait(0.18)
    eventPlayer.Anadoublesleepdart = eventPlayer.Anadoublesleepdart + 1