#must have valid coordinates!
execute if score @s vsRespawnX matches -2147483648 run return 0

scoreboard players operation @s goto_x = @s vsRespawnX
scoreboard players operation @s goto_y = @s vsRespawnY
scoreboard players operation @s goto_z = @s vsRespawnZ
scoreboard players operation @s goto_yaw = @s vsRespawnYaw
scoreboard players operation @s goto_pitch = @s vsRespawnPitch
function phan:warp_to_saved_coords/_go

execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#cancel momentum
execute at @s run tp @s @s

#get vertical launch if that's a thing we have
execute if score @s vsRespawnLaunch matches 1.. run function phan:items/launch_effect

#cooldown on respawn
scoreboard players set @s inputCooldownB 40
scoreboard players set @s inputCooldownC 7