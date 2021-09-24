#Teleporting hitbox to frog
    execute as @e[tag=frog] at @s as @e[tag=hitbox, sort=nearest, distance=..1, limit=1] run tp @s ~ ~ ~ ~ ~

#Killing frog if hitbox has been killed
    execute as @e[tag=frog] at @s unless entity @e[tag=hitbox, sort=nearest, distance=..0.3] run playsound frog:ribbithigh neutral @a ~ ~ ~
    execute as @e[tag=frog] at @s unless entity @e[tag=hitbox, sort=nearest, distance=..0.3] run kill @s
    execute as @e[tag=hitbox] at @s unless entity @e[tag=frog, sort=nearest, distance=..0.3] run kill @s

#Hit detection code
    tag @e[tag=hitbox, tag=!hurt,nbt={HurtTime:10s}] add hurt
    tag @e[tag=hitbox, tag=hurt,nbt={HurtTime:9s}] remove hurt
    execute as @e[tag=hitbox, tag=hurt] at @s run function frog:hit

#Turning red when hit
    execute as @e[tag=hitbox, nbt=!{HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:1}}]}] run item replace entity @s armor.head with redstone{CustomModelData:1}
    execute as @e[tag=hitbox, nbt={HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:1}}]}] run item replace entity @s armor.head with stick{CustomModelData:1}
    execute as @e[tag=hitbox, nbt=!{HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:2}}]}] run item replace entity @s armor.head with stick{CustomModelData:1}
    execute as @e[tag=hitbox, nbt={HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:2}}]}] run item replace entity @s armor.head with stick{CustomModelData:1}
    execute as @e[tag=hitbox, nbt=!{HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:3}}]}] run item replace entity @s armor.head with stick{CustomModelData:1}
    execute as @e[tag=hitbox, nbt={HurtTime:0s}] at @s as @e[tag=frog, sort=nearest, distance=..1, limit=1, nbt={ArmorItems:[{}, {}, {}, {tag:{CustomModelData:3}}]}] run item replace entity @s armor.head with stick{CustomModelData:1}
