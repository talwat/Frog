#Random number generator: https://www.planetminecraft.com/data-pack/math-random-random-number-generator/
#Made by: fafik77

scoreboard objectives add RNG dummy "Random NumGen"
scoreboard objectives add RNG_rp minecraft.custom:minecraft.walk_one_cm "Random NumGen-walk"
execute unless score #const2 RNG matches 1.. run scoreboard players set #const2 RNG 3
scoreboard players add #prev_number RNG 0
scoreboard players set #m1 RNG -1
scoreboard players add #clock_time RNG 1