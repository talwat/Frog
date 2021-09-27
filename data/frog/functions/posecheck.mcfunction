#Detecting velocity and tint
    #Detecting upwards velocity
    execute if score @s hurtTime matches 0 if score @s frogMotionY matches -770.. unless score @s frogMotionX matches 0 run item replace entity @s armor.head with stick{CustomModelData:2}
    execute if score @s hurtTime matches 0 if score @s frogMotionY matches -770.. if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with stick{CustomModelData:2}
    execute if score @s hurtTime matches 1.. if score @s frogMotionY matches -770.. unless score @s frogMotionX matches 0 run item replace entity @s armor.head with redstone{CustomModelData:2}
    execute if score @s hurtTime matches 1.. if score @s frogMotionY matches -770.. if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with redstone{CustomModelData:2}

    #Detecting downwards velocity
    execute if score @s hurtTime matches 0 if score @s frogMotionY matches ..-790 unless score @s frogMotionX matches 0 run item replace entity @s armor.head with stick{CustomModelData:3}
    execute if score @s hurtTime matches 0 if score @s frogMotionY matches ..-790 if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with stick{CustomModelData:3}
    execute if score @s hurtTime matches 1.. if score @s frogMotionY matches ..-790 unless score @s frogMotionX matches 0 run item replace entity @s armor.head with redstone{CustomModelData:3}
    execute if score @s hurtTime matches 1.. if score @s frogMotionY matches ..-790 if score @s frogMotionX matches 0 unless score @s frogMotionZ matches 0 run item replace entity @s armor.head with redstone{CustomModelData:3}

    #Detecting no velocity
    execute if score @s hurtTime matches 0 if score @s frogMotionX matches -300..300 if score @s frogMotionZ matches -300..300 run item replace entity @s armor.head with stick{CustomModelData:1}
    execute if score @s hurtTime matches 1.. if score @s frogMotionX matches -300..300 if score @s frogMotionZ matches -300..300 run item replace entity @s armor.head with redstone{CustomModelData:1}