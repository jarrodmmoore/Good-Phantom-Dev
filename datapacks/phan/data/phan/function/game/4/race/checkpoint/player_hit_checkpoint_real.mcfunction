#do nothing if we're in the homestretch.
execute if entity @s[tag=vsHomeStretch] run return 0

tag @s add incrementCheckReal

#get eyes from the checkpoint
scoreboard players operation @s playerGetEyes = #checkGiveEyes value

#save checkpoint node location as our new respawn point
scoreboard players operation @s vsRespawnX = #location_x value
scoreboard players operation @s vsRespawnY = #location_y value
scoreboard players operation @s vsRespawnZ = #location_z value
scoreboard players operation @s vsRespawnYaw = #location_yaw value
scoreboard players operation @s vsRespawnPitch = #location_pitch value
scoreboard players operation @s vsRespawnLaunch = #checkLaunchRespawn value