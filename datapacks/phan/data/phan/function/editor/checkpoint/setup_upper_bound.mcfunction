#run by an aec

#find our place in the world
scoreboard players operation @s goto_x = #checkMaxX value
scoreboard players operation @s goto_y = #checkMaxY value
scoreboard players operation @s goto_z = #checkMinZ value
scoreboard players set @s goto_yaw 90
scoreboard players set @s goto_pitch 0
function phan:warp_to_saved_coords/_go

#part 2
execute at @s run function phan:editor/checkpoint/setup_upper_bound_go