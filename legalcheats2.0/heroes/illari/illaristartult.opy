#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3


rule "[illari/illaristartult.opy] illari start ult":
    @Event eachPlayer
    @Hero illari
    @Condition eventPlayer.IsUsingHack == 1
    
    eventPlayer.HackDetection = eventPlayer.HackDetection + -8
    wait(0.025)
    if RULE_CONDITION:
        goto RULE_START


