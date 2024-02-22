#!mainFile "../../main.opy"

#Player variables

playervar HackDetection 2

rule "[echo/echoheroswap.opy] Echo Ult Kill":
    @Event eachPlayer
    @Condition eventPlayer.isDuplicatingAHero() == true
    
    kill(eventPlayer, null)
    eventPlayer.startForcingHero(eventPlayer.getHeroOfDuplication())
    eventPlayer.preloadHero(eventPlayer.getHeroOfDuplication())
    wait(0.5)
    eventPlayer.setUltCharge(100)
    eventPlayer.forceButtonPress(Button.ULTIMATE)
    wait(15)
    eventPlayer.preloadHero(Hero.ECHO)
    eventPlayer.startForcingHero(Hero.ECHO)
    wait(1)
    eventPlayer.stopForcingCurrentHero()
    eventPlayer.HackDetection = -1