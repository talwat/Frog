#Replacing HopCycle Schedule
    execute if entity @p[distance=..2.5] run schedule function frog:hopcycle 3s replace

#Turning towards player and storing rotation
    execute as @s at @s run tp @s ~ ~ ~ facing entity @p
    execute at @s if block ~ ~-0.3 ~ #frog:transparent run tp @s ~ ~-0.3 ~ ~ ~ 
    execute store result score @s frogTurn run data get entity @s Rotation[0] 1

#Flipping the frog around
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation 180 frogTurn += @s frogTurn
    scoreboard players set 180 frogTurn 180

#Hopping
    execute if entity @p[distance=..2.5] run function frog:hop

#Adding tag and a second later removing it
    execute if entity @p[distance=..2.5] run tag @s add frogJumped
    execute if entity @p[distance=..2.5] run schedule function frog:tagremove 1s replace