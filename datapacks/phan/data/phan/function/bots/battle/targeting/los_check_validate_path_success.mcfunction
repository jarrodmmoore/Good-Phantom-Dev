#only 1, please
execute if score #success value matches 1.. run return 0
#=====

#save coordinates
execute store result score #editArg1 value run data get entity @s Pos[0] 10
execute store result score #editArg2 value run data get entity @s Pos[1] 10
execute store result score #editArg3 value run data get entity @s Pos[2] 10
scoreboard players operation #botTargetID value = @s eyeSpawnerID

#we're NOT the one if our y coordinate is too high
execute if score #editArg2 value > #checkMaxY value run return 0
#=====

#we're the one if we made it here!
scoreboard players set #success value 1