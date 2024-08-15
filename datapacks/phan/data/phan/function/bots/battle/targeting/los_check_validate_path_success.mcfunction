scoreboard players set #success value 1
scoreboard players operation #test2 value = @s eyeSpawnerID

#set coordinates
execute store result score #editArg1 value run data get entity @s Pos[0] 10
execute store result score #editArg2 value run data get entity @s Pos[1] 10
execute store result score #editArg3 value run data get entity @s Pos[2] 10
scoreboard players operation #botTargetID value = @s eyeSpawnerID
execute as @e[type=zombie,tag=botSelf,distance=..1] run function phan:bots/reaction/set_temporary_target_go