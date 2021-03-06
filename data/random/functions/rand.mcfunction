#Random number generator: https://www.planetminecraft.com/data-pack/math-random-random-number-generator/
#Made by: fafik77

#Load last number to new
scoreboard players operation number RNG = #prev_number RNG
scoreboard players operation number RNG -= #const2 RNG
scoreboard players operation number RNG *= #clock_time RNG
execute store result score #moreRand RNG run data get entity @e[limit=1,sort=random] {}
scoreboard players operation #moreRand RNG *= #clock_time RNG_rp
scoreboard players operation number RNG -= #moreRand RNG_rp
scoreboard players operation #number2 RNG = number RNG_rp
scoreboard players operation #number2 RNG *= #const2 RNG_rp
scoreboard players operation #number2 RNG /= #clock_time RNG_rp
scoreboard players operation #number2 RNG %= #clock_time RNG_rp
scoreboard players operation number RNG -= #number2 RNG_rp
scoreboard players operation number RNG += @r RNG_rp
scoreboard players operation number RNG += #prev_number RNG

#Make the number positive
execute if score number RNG matches ..0 run scoreboard players operation number RNG *= #m1 RNG

#Save new number to the last
scoreboard players operation #prev_number RNG = number RNG
scoreboard players operation #prev_number RNG -= #clock_time RNG
scoreboard players operation #prev_number RNG /= #const2 RNG

#Trim new number to <min, max>
scoreboard players operation max RNG > min RNG
scoreboard players operation #max2 RNG = max RNG
execute if score #max2 RNG matches 1.. run scoreboard players add #max2 RNG 1
scoreboard players operation #max2 RNG -= min RNG
execute if score max RNG matches 1.. run scoreboard players operation number RNG %= #max2 RNG
scoreboard players operation number RNG += min RNG

#Reset it back to zero
scoreboard players set max RNG 0
scoreboard players set min RNG 0
