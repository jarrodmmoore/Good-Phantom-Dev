#run by an aec

#find our place in the world
scoreboard players operation @s goto_x = #checkMinX value
scoreboard players operation @s goto_y = #checkMaxY value
scoreboard players operation @s goto_z = #checkMaxZ value
scoreboard players set @s goto_yaw 270
scoreboard players set @s goto_pitch 0
function phan:warp_to_saved_coords/_go

#part 2
execute at @s run function phan:editor/checkpoint/setup_upper_bound_2_go