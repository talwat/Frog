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


#Load Message
    tellraw @a ["",{"text":"Frog","bold":true,"color":"dark_green"},{"text":" Datapack Loaded!","bold":true,"color":"green"}]