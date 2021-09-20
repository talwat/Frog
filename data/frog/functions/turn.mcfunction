#Generating a random number and storing it as rotation 
    #Setting random number values
    scoreboard players set min RNG 0
    scoreboard players set max RNG 360

    #Generating random value
    function random:rand

    #Storing random value as rotational data
    execute as @e[tag=frog] store result entity @s Rotation[0] float 1 run scoreboard players get number RNG