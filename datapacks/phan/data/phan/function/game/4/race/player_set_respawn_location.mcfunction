#set current location as our new respawn point
scoreboard players operation @s vsRespawnX = @s location_x
scoreboard players operation @s vsRespawnY = @s location_y
scoreboard players operation @s vsRespawnZ = @s location_z
scoreboard players operation @s vsRespawnYaw = @s location_yaw
scoreboard players operation @s vsRespawnPitch = @s location_pitch
scoreboard players set @s vsRespawnLaunch 0