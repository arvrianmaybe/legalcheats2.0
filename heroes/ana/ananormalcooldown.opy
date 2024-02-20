#!mainFile "../../main.opy"
#Player variables
playervar Anadoublesleepdart 6


rule "[ana/ananormalcooldown.opy] Ana Normal Cooldown":
    @Event eachPlayer
    @Hero ana
    @Condition eventPlayer.Anadoublesleepdart == 2

    wait(1)
    eventPlayer.(eventPlayer.(Button.ABILITY_1, 14 ))