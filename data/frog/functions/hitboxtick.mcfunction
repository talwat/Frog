#Teleporting hitbox to frog
    execute as @e[type=armor_stand, tag=frog] at @s as @e[type=silverfish, tag=hitbox, sort=nearest, distance=..1, limit=1] run tp @s ~ ~ ~ ~ ~

#Killing frog if hitbox has been killed
    execute as @e[type=armor_stand, tag=frog] at @s unless entity @e[type=silverfish, tag=hitbox, sort=nearest, distance=..0.5] run playsound frog:ribbithigh neutral @a ~ ~ ~
    execute as @e[type=armor_stand, tag=frog] at @s unless entity @e[type=silverfish, tag=hitbox, sort=nearest, distance=..0.5] run kill @s
    execute as @e[type=silverfish, tag=hitbox] at @s unless entity @e[type=armor_stand, tag=frog, sort=nearest, distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:[frog], Invisible:1b, Small:1b, Silent:1b}

#Hit detection code
    tag @e[type=silverfish, tag=hitbox, tag=!hurt,nbt={HurtTime:10s}] add hurt
    tag @e[type=silverfish, tag=hitbox, tag=hurt,nbt={HurtTime:9s}] remove hurt
    execute as @e[type=silverfish, tag=hitbox, tag=hurt] at @s run function frog:hit