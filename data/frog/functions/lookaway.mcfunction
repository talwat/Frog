#Replacing HopCycle Schedule
    schedule function frog:hopcycle 3s replace

#Turning towards player and storing rotation
    execute as @s at @s run tp @s ~ ~ ~ facing entity @p
    execute store result score @s frogTurn run data get entity @s Rotation[0] 1

#Flipping the frog around
    execute store result entity @s Rotation[0] float 1 run scoreboard players operation 180 frogTurn += @s frogTurn
    scoreboard players set 180 frogTurn 180

#Hopping
    function frog:hop

#Adding tag and a second later removing it
    tag @s add frogJumped
    schedule function frog:tagremove 1s replace