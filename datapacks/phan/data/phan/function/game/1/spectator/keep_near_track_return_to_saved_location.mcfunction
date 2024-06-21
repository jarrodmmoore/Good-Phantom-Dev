scoreboard players add @s vsRespawnX 0
scoreboard players add @s vsRespawnY 0
scoreboard players add @s vsRespawnZ 0
scoreboard players operation @s goto_x = @s vsRespawnX
scoreboard players operation @s goto_y = @s vsRespawnY
scoreboard players operation @s goto_z = @s vsRespawnZ
scoreboard players set @s goto_yaw 0
scoreboard players set @s goto_pitch 0
function phan:warp_to_saved_coords/_go

scoreboard players reset @s goto_x
scoreboard players reset @s goto_y
scoreboard players reset @s goto_z
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch