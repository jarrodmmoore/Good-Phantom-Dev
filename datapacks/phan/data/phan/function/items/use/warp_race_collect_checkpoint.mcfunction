#executed by the checkpoint that the player is collecting

#set respawn coordinates
scoreboard players operation #vsRespawnX dataTransfer = @s location_x
scoreboard players operation #vsRespawnY dataTransfer = @s location_y
scoreboard players operation #vsRespawnZ dataTransfer = @s location_z
scoreboard players operation #vsRespawnYaw dataTransfer = @s location_yaw
scoreboard players operation #vsRespawnPitch dataTransfer = @s location_pitch
execute store result score #vsRespawnLaunch dataTransfer run execute if entity @s[tag=checkFlyRespawn]

#send data to player
execute unless score #botWarping value matches 1 as @a[tag=warpingPlayer] run function phan:items/use/warp_race_collect_checkpoint_transfer_data
execute if score #botWarping value matches 1 as @e[tag=warpingPlayer,tag=ai,type=zombie] run function phan:items/use/warp_race_collect_checkpoint_transfer_data

#run if we're a real checkpoint
execute if score @s editArg2 matches 0 run function phan:items/use/warp_race_collect_checkpoint_real

#run if we're an optional checkpoint
execute unless score @s editArg2 matches 0 as @a[tag=warpingPlayer] at @s run function phan:game/4/race/checkpoint/increment_player_optional