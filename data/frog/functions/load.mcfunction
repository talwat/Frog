#Scoreboards
    #Frog hopping scoreboards (frog:hop)
    scoreboard objectives add frogHopX1 dummy
    scoreboard objectives add frogHopX2 dummy
    scoreboard objectives add frogHopZ1 dummy
    scoreboard objectives add frogHopZ2 dummy

    #Frog motion detecting in order to change pose (frog:tick)
    scoreboard objectives add frogMotionX dummy
    scoreboard objectives add frogMotionY dummy
    scoreboard objectives add frogMotionZ dummy

    #Rotation changing scoreboards (frog:lookaway)
    scoreboard objectives add frogTurn dummy 
    scoreboard players set 180 frogTurn 180 

    #Frog Spawning Scoreboards
    scoreboard objectives add frogSpawn dummy
    scoreboard players add frogCount frogSpawn 0


#Load Message
    tellraw @a ["",{"text":"Frog","bold":true,"color":"dark_green"},{"text":" Datapack Loaded!","bold":true,"color":"green"}]