#executed by the checkpoint that the player is collecting

#set respawn coordinates
scoreboard players operation @a[tag=warpingPlayer] vsRespawnX = @s location_x
scoreboard players operation @a[tag=warpingPlayer] vsRespawnY = @s location_y
scoreboard players operation @a[tag=warpingPlayer] vsRespawnZ = @s location_z
scoreboard players operation @a[tag=warpingPlayer] vsRespawnYaw = @s location_yaw
scoreboard players operation @a[tag=warpingPlayer] vsRespawnPitch = @s location_pitch
execute store result score @a[tag=warpingPlayer] vsRespawnLaunch run execute if entity @s[tag=checkFlyRespawn]

#run if we're a real checkpoint
execute if score @s editArg2 matches 0 run function phan:items/use/warp_race_collect_checkpoint_real

#run if we're an optional checkpoint
execute unless score @s editArg2 matches 0 as @a[tag=warpingPlayer] at @s run function phan:game/4/race/checkpoint/increment_player_optional