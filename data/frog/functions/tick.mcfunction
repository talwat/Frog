#Spawn Egg Code
    execute as @e[tag=frogSpawnEgg] at @s run function frog:summon
    execute as @e[tag=frogSpawnEgg] at @s run kill @s

#Storing X, Y, and Z motion data scaled up by 10000
    execute as @e[type=armor_stand, tag=frog] at @s store result score @s frogMotionX run data get entity @s Motion[0] 10000
    execute as @e[type=armor_stand, tag=frog] at @s store result score @s frogMotionY run data get entity @s Motion[1] 10000
    execute as @e[type=armor_stand, tag=frog] at @s store result score @s frogMotionZ run data get entity @s Motion[2] 10000

#Detecting velocity to change pose
    #Getting Hurt Time
    execute as @e[type=armor_stand, tag=frog] at @s store result score @s hurtTime run data get entity @e[type=silverfish, tag=hitbox, sort=nearest, distance=..1, limit=1] HurtTime 

    #Calculating Pose
    execute as @e[type=armor_stand, tag=frog] at @s run function frog:posecheck

#Detecting when player is near to hop away
    execute as @e[type=armor_stand, tag=frog, tag=!frogJumped] at @s unless block ~ ~-0.1 ~ #frog:transparent run execute if entity @e[type=player, distance=..3, predicate=!frog:sneaking] run function frog:lookaway

#Mob Spawning Code
    execute as @e[type=slime, nbt={Size:3}, tag=!frogSpawned, sort=random] at @s run function frog:naturalspawn