#look up location from dream storage
$execute store result score @s vsRespawnX run data get storage phan_dream_$(level_id):$(value)_act_$(act) teleport_location[0]
$execute store result score @s vsRespawnY run data get storage phan_dream_$(level_id):$(value)_act_$(act) teleport_location[1]
$execute store result score @s vsRespawnZ run data get storage phan_dream_$(level_id):$(value)_act_$(act) teleport_location[2]
scoreboard players set @s vsRespawnYaw 0
scoreboard players set @s vsRespawnPitch 0
scoreboard players set @s vsRespawnLaunch 0
$execute store result score @s vsRespawnDimension run data get storage phan_dream_$(level_id):$(value)_act_$(act) teleport_dimension

#put in creative mode
gamemode creative @s

#let's also load conditions, too. why not?
$function phan:level_manager/warp_to_act_go_conditions with storage phan_dream_$(level_id):$(value)_act_$(act)

#go to saved location and dimension
scoreboard players operation @s goto_x = @s vsRespawnX
scoreboard players operation @s goto_y = @s vsRespawnY
scoreboard players operation @s goto_z = @s vsRespawnZ
scoreboard players operation @s goto_yaw = @s vsRespawnYaw
scoreboard players operation @s goto_pitch = @s vsRespawnPitch
execute unless score @s vsRespawnDimension matches 2..3 in overworld run function phan:warp_to_saved_coords/_go
execute if score @s vsRespawnDimension matches 2 in the_nether run function phan:warp_to_saved_coords/_go
execute if score @s vsRespawnDimension matches 3 in the_end run function phan:warp_to_saved_coords/_go