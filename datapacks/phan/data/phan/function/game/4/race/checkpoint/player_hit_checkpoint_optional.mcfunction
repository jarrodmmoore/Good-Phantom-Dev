#do nothing if we're in the homestretch.
execute if entity @s[tag=vsHomeStretch] run return 0

tag @s add incrementCheckOptional

#save checkpoint node location as our new respawn point
scoreboard players operation @s vsRespawnX = #location_x value
scoreboard players operation @s vsRespawnY = #location_y value
scoreboard players operation @s vsRespawnZ = #location_z value
scoreboard players operation @s vsRespawnYaw = #location_yaw value
scoreboard players operation @s vsRespawnPitch = #location_pitch value
scoreboard players operation @s vsRespawnLaunch = #checkLaunchRespawn value
scoreboard players operation @s vsRespawnDimension = #activeDimension value

#bot has a spawnpoint!
tag @s[tag=ai,tag=!botHasSpawnpoint] add botHasSpawnpoint

#bot needs to update controller
tag @s[tag=ai] add hasDataToSend