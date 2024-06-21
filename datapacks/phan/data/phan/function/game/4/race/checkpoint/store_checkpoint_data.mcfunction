scoreboard players operation #checkMinX value = @s checkMinX
scoreboard players operation #checkMinY value = @s checkMinY
scoreboard players operation #checkMinZ value = @s checkMinZ
scoreboard players operation #checkMaxX value = @s checkMaxX
scoreboard players operation #checkMaxY value = @s checkMaxY
scoreboard players operation #checkMaxZ value = @s checkMaxZ
scoreboard players operation #checkpointNum value = @s editArg1
scoreboard players operation #optionalCheckpoint value = @s editArg2
scoreboard players operation #checkGiveEyes value = @s editArg3
#hopefully custom track designers don't try to move the checkpoints here... lol
scoreboard players operation #location_x value = @s location_x
scoreboard players operation #location_y value = @s location_y
scoreboard players operation #location_z value = @s location_z
scoreboard players operation #location_yaw value = @s location_yaw
scoreboard players operation #location_pitch value = @s location_pitch
execute store result score #checkWarn value run execute if entity @s[tag=checkWarn]
execute store result score #checkWrongWay value run execute if entity @s[tag=checkWrongWay]
execute store result score #checkLaunchRespawn value run execute if entity @s[tag=checkFlyRespawn]
