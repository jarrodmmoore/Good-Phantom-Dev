#we exist!
scoreboard players set #success value 1

#save node position as our new respawn point
execute store result score #location_x value run data get entity @s Pos[0]
execute store result score #location_y value run data get entity @s Pos[1]
execute store result score #location_z value run data get entity @s Pos[2]
execute store result score #location_yaw value run data get entity @s Rotation[0]
execute store result score #location_pitch value run data get entity @s Rotation[1]
execute store result score #checkLaunchRespawn value run execute if entity @s[scores={editArg1=1}]
scoreboard players operation #location_dimension value = #activeDimension value