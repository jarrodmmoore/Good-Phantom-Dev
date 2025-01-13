#ok now stop worrying about this until we switch areas again
scoreboard players reset @s seekSpawnpoint

#save location as our new respawn point
scoreboard players operation @s vsRespawnX = #location_x value
scoreboard players operation @s vsRespawnY = #location_y value
scoreboard players operation @s vsRespawnZ = #location_z value
scoreboard players operation @s vsRespawnYaw = #location_yaw value
scoreboard players operation @s vsRespawnPitch = #location_pitch value
scoreboard players operation @s vsRespawnLaunch = #checkLaunchRespawn value
scoreboard players operation @s vsRespawnDimension = #activeDimension value