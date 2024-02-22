#!mainFile "../../main.opy"
#Player Variables
playervar Anadoublesleepdart 6

rule "[ana/anadoublesleep.opy] Ana Start Double Sleep-Dart":
    @Event eachPlayer
    @Hero ana
    @Condition eventPlayer.Anadoublesleepdart == 1

    wait.(1)
    eventPlayer.(Button.ABILITY_1, 0)