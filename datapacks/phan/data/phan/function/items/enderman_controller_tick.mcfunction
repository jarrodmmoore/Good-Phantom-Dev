#use age as a timer
scoreboard players add @s age 1
scoreboard players operation #endermanAge value = @s age

#store IDs
scoreboard players operation #thisEndermanID value = @s playerID
scoreboard players operation #thisEndermanOG value = @s originalID

#i'm gonna make this process quicker and simpler than it was in Sprint Racer

#phase 1, spawned by player. say hello
execute if score @s age matches ..99 as @a[tag=doneWithIntro,gamemode=!spectator] if score @s playerID = #thisEndermanID value at @s run function phan:items/enderman_phase_1
execute if score @s age matches ..99 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #thisEndermanID value at @s run function phan:items/enderman_phase_1
execute if score @s age matches 50 run scoreboard players set @s age 100

#phase 2, wait for someone to hold an item in their hand
execute if score @s age matches 100..499 run function phan:items/enderman_phase_2

#phase 3, steal item
execute if score @s age matches 500..599 run scoreboard players operation #thisEndermanTG value = @s targetID
execute if score @s age matches 500..599 as @a[tag=doneWithIntro,gamemode=!spectator] if score @s playerID = #thisEndermanTG value at @s run function phan:items/enderman_phase_3
execute if score @s age matches 500..599 if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #thisEndermanTG value at @s run function phan:items/enderman_phase_3
execute if score @s age matches 500.. run tag @s remove endermanIsDangerous
execute if score @s age matches 536 run scoreboard players set @s age 1000

#keep associated enderman props alive as long as this is running
execute as @e[type=enderman,tag=endermanProp] if score @s originalID = #thisEndermanOG value run scoreboard players set @s lifespan 4

#controller stays alive as long as this is running
execute if score @s age matches ..999 run scoreboard players set @s lifespan 3