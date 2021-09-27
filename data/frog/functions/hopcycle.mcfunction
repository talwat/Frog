#Executing hop function as frog
    execute as @e[type=armor_stand, tag=frog] at @s unless block ~ ~-0.1 ~ #frog:transparent run function frog:hop

#Turning as frog a second after the hop function has been called
    execute as @e[type=armor_stand, tag=frog] at @s run schedule function frog:turn 1s replace

#Repeating this function
    schedule function frog:hopcycle 3s append
    tag @e[type=armor_stand, tag=frogJumped] remove frogJumped