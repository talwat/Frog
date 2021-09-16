scoreboard players set min RNG 0
scoreboard players set max RNG 360
function random:rand
execute as @e[tag=frog] store result entity @s Rotation[0] float 1 run scoreboard players get number RNG