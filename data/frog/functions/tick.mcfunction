#Storing X, Y, and Z motion data scaled up by 10000
    execute as @e[tag=frog] at @s store result score @s frogMotionX run data get entity @s Motion[0] 10000
    execute as @e[tag=frog] at @s store result score @s frogMotionY run data get entity @s Motion[1] 10000
    execute as @e[tag=frog] at @s store result score @s frogMotionZ run data get entity @s Motion[2] 10000

#Detecting velocity to change pose
    #Detecting upwards velocity
    execute as @e[tag=frog] at @s if score @s frogMotionY matches -770.. unless score @s frogMotionX matches 0 run item replace entity @s armor.head with stick{CustomModelData:2}
    execute as @e[tag=frog] at @s if score @s frogMotionY matches -770.. if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with stick{CustomModelData:2}

    #Detecting downwards velocity
    execute as @e[tag=frog] at @s if score @s frogMotionY matches ..-790 unless score @s frogMotionX matches 0 run item replace entity @s armor.head with stick{CustomModelData:3}
    execute as @e[tag=frog] at @s if score @s frogMotionY matches ..-790 if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with stick{CustomModelData:3}

    #Detecting no velocity
    execute as @e[tag=frog] at @s if score @s frogMotionX matches -300..300 if score @s frogMotionZ matches -300..300 run item replace entity @s armor.head with stick{CustomModelData:1}

#Detecting when player is near to hop away
    execute as @e[tag=frog, tag=!frogJumped] at @s run execute if entity @e[type=player, distance=..3, predicate=!frog:sneaking] run function frog:lookaway

#Mob Spawning Code
    execute as @e[type=slime, tag=!frogSpawned, sort=random] at @s run function frog:naturalspawn