#Executing hop function as frog
    execute as @e[tag=frog] at @s run function frog:hop

#Turning as frog a second after the hop function has been called
    execute as @e[tag=frog] at @s run schedule function frog:turn 1s replace

#Repeating this function
    schedule function frog:hopcycle 3s append
    tag @e[tag=frogJumped] remove frogJumped