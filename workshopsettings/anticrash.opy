#!mainFile "../main.opy"

# Code from https://workshop.codes/KHYA7


rule "[workshopsettings/anticrash.opy] anti crash":
    @Condition getServerLoad() > 200
    
    smallMessage(getAllPlayers(), "Anti-Crash Enabled.")
    setSlowMotion(10)
    waitUntil(getServerLoad() < 175, 99999)
    smallMessage(getAllPlayers(), "Anti-Crash Disabled.")
    setSlowMotion(100)