#!mainFile "../main.opy"

#!include "anticheat/gotdetectedbyanticheat"
#!include "anticheat/stopusingcheats"

#Player variables
playervar HackDetection 2


rule "[anticheatdetection2.0.opy] Anti-Cheat Detection 2.0":
    @Event eachPlayer
    
    destroyAllProgressBarHuds()
    wait(0.25)
    destroyAllProgressBarHuds()
    #createProgressBarInWorldText(localPlayer, localPlayer.HackDetection, "ANTI-CHEAT DETECTION {0}".format(abilityIconString(Hero.SOMBRA, Button.SECONDARY_FIRE)), updateEveryTick(localPlayer.getEyePosition() + ((angleToDirection(localPlayer.getHorizontalFacingAngle(), localPlayer.getVerticalFacingAngle() + -18)) * 1000)), 1, Clip.NONE, rgb((getPlayersInSlot(0, Team.2).getNormalizedHealth() - 1) * -255, getPlayersInSlot(0, Team.2).getNormalizedHealth() * 255, 0), Color.WHITE, ProgressWorldTextReeval.VISIBILITY_POSITION_VALUES_AND_COLOR, SpecVisibility.DEFAULT)
        #code is from kendlr, but the progress bar hud is by me
    createProgressBarInWorldText(localPlayer, localPlayer.HackDetection, "ANTI-CHEAT DETECTION {0}".format(abilityIconString(Hero.SOMBRA, Button.SECONDARY_FIRE)), updateEveryTick(localPlayer.getEyePosition() + ((angleToDirection(localPlayer.getHorizontalFacingAngle(), localPlayer.getVerticalFacingAngle() + -18)) * 1000)), 1, Clip.NONE, Color.PURPLE, Color.WHITE, ProgressWorldTextReeval.VISIBILITY_POSITION_VALUES_AND_COLOR, SpecVisibility.DEFAULT)