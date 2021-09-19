#Storing X, Y, and Z motion data scaled up by 10000
execute as @e[tag=frog] at @s store result score @s frogMotionX run data get entity @s Motion[0] 10000
execute as @e[tag=frog] at @s store result score @s frogMotionY run data get entity @s Motion[1] 10000
execute as @e[tag=frog] at @s store result score @s frogMotionZ run data get entity @s Motion[2] 10000

#Detecting Upwards Velocity
execute as @e[tag=frog] at @s if score @s frogMotionY matches -770.. unless score @s frogMotionX matches 0 run item replace entity @s armor.head with egg{CustomModelData:2}
execute as @e[tag=frog] at @s if score @s frogMotionY matches -770.. if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with egg{CustomModelData:2}

#Detecting Downwards Velocity
execute as @e[tag=frog] at @s if score @s frogMotionY matches ..-790 unless score @s frogMotionX matches 0 run item replace entity @s armor.head with redstone{CustomModelData:3}
execute as @e[tag=frog] at @s if score @s frogMotionY matches ..-790 if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with redstone{CustomModelData:3}

#Detecting No Velocity
execute as @e[tag=frog] at @s if score @s frogMotionX matches -300..300 if score @s frogMotionZ matches 0 run item replace entity @s armor.head with stick{CustomModelData:1}