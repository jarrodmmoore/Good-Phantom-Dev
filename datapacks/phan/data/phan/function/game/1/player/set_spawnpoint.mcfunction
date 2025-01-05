#save current location as our new respawn point
execute store result score @s vsRespawnX run data get entity @s Pos[0]
execute store result score @s vsRespawnY run data get entity @s Pos[1]
execute store result score @s vsRespawnZ run data get entity @s Pos[2]
execute store result score @s vsRespawnYaw run data get entity @s Rotation[0]
execute store result score @s vsRespawnPitch run data get entity @s Rotation[1]
scoreboard players set @s vsRespawnLaunch 0
scoreboard players operation @s vsRespawnDimension = #activeDimension value