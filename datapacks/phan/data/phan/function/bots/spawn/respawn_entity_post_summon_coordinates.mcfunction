#executed by the bot we just summoned

#bot has data to send
tag @s add hasDataToSend

#save checkpoint node location as our new respawn point
execute store result score #location_x value run data get entity @s Pos[0] 1
execute store result score #location_y value run data get entity @s Pos[1] 1
scoreboard players add #location_y value 100
execute store result score #location_z value run data get entity @s Pos[2] 1
execute store result score #location_yaw value run data get entity @s Rotation[0] 1
execute store result score #location_pitch value run data get entity @s Rotation[1] 1
#(assume dimension is the same as the level itself)
scoreboard players set #vsRespawnLaunch value 0
execute at @s if entity @e[type=marker,tag=checkFlyRespawn,tag=checkpoint,distance=..2,scores={versusSpawn=1..}] run scoreboard players set #vsRespawnLaunch value 1

#(we're about to send this to the botController)