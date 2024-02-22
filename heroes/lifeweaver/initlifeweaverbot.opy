#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2
playervar IsUsingHack 3
playervar LockOut 4


rule "[lifeweaver/lifeweaverbot.opy] lifeweaver heal bot":
    @Event eachPlayer
    @Hero lifeweaver
    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true
    @Condition eventPlayer.HackDetection >= 100
    
    eventPlayer.HackDetection = 0
    createDummy(Hero.LIFEWEAVER, eventPlayer.getTeam(), -1, eventPlayer, eventPlayer)
    wait(0.25)
    eventPlayer.IsUsingHack = 1
    wait(5)
    destroyAllDummies()
