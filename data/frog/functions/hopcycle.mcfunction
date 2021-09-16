execute as @e[tag=frog] at @s run function frog:hop
execute as @e[tag=frog] at @s run schedule function frog:turn 1s replace
schedule function frog:hopcycle 5s replace