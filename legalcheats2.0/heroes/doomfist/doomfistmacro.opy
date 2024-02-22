#!mainFile "../../main.opy"

rule "[doomfist/doomfistmacro] doomfist macro":
    @Event eachPlayer
    @Hero doomfist
    @Condition eventPlayer.isHoldingButton(Button.SECONDARY_FIRE) == true

    wait(0.299)
    eventPlayer.setFacing(directionTowards(eventPlayer.getEyePosition(), getClosestPlayer(eventPlayer, getOppositeTeam(eventPlayer.getTeam())).getEyePosition()), Relativity.TO_WORLD)
    wait(0.03)
    eventPlayer.forceButtonPress(Button.MELEE)