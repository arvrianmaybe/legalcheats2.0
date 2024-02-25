#!mainFile "main.opy"

rule "[reduceassembly.opy] reduce assembly":
    @Condition isAssemblingHeroes() == true
    
    setMatchTime(10)