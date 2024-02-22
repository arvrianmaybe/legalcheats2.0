#!mainFile "../../main.opy"

#!include "heroes/ashe/allowscheats.opy"
#!include "heroes/ashe/asheenablecheats.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3

rule "[heroes/ashe/initashe.opy] init ashe":
    @Event eachPlayer
    @Hero ashe
    @Condition eventPlayer.IsUsingHack == 1
    
    damage(getPlayers(getOppositeTeam(eventPlayer.getTeam())), eventPlayer, 1)
    heal(getPlayers(getOppositeTeam(eventPlayer.getTeam())), null, 1)
    eventPlayer.HackDetection = eventPlayer.HackDetection + -0.9
    wait(0.16)
    if RULE_CONDITION:
        goto RULE_START