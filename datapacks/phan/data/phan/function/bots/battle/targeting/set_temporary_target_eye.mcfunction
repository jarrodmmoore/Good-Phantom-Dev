tag @s[tag=potentialTempTarget] remove potentialTempTarget

#first come, first served! sorry mate
execute if score #targetExists value matches 1 run return 0

#we're the one and only
scoreboard players set #targetExists value 1

#send position and id data to bot
execute store result score #editArg1 value run data get entity @s Pos[0] 10
execute store result score #editArg2 value run data get entity @s Pos[1] 10
execute store result score #editArg3 value run data get entity @s Pos[2] 10
scoreboard players operation #botTargetID value = @s eyeSpawnerID
execute as @e[type=zombie,tag=botSelf,distance=..1] run function phan:bots/reaction/set_temporary_target_go