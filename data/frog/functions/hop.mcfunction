#Storing Position
    execute store result score @s frogHopX1 run data get entity @s Pos[0] 1000
    execute store result score @s frogHopZ1 run data get entity @s Pos[2] 1000

#Teleporting
    tp @s ^ ^ ^0.1

#Storing the second position
    execute store result score @s frogHopX2 run data get entity @s Pos[0] 1000
    execute store result score @s frogHopZ2 run data get entity @s Pos[2] 1000

#Modifying Data
    execute store result entity @s Motion[0] double .007 run scoreboard players operation @s frogHopX2 -= @s frogHopX1
    data modify entity @s Motion[1] set value 0.5d
    execute store result entity @s Motion[2] double .007 run scoreboard players operation @s frogHopZ2 -= @s frogHopZ1