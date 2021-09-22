#Summoning if score matches 0
    execute if score frogCount frogSpawn matches 0 run function frog:summon
    execute if score frogCount frogSpawn matches 0 run tp @s ~ ~-256 ~
    
#Adding tag and increasing score   
    tag @s add frogSpawned
    scoreboard players add frogCount frogSpawn 1

#Reseting score
    execute if score frogCount frogSpawn matches 3 run scoreboard players set frogCount frogSpawn 0