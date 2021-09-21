execute as @e[tag=frog] at @s as @e[tag=hitbox, sort=nearest, limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=frog] at @s unless entity @e[tag=hitbox, distance=..0.1] run kill @s