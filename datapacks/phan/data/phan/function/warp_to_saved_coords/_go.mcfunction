#dummy values for tp
scoreboard players operation @s dummy_x = @s goto_x
scoreboard players operation @s dummy_y = @s goto_y
scoreboard players operation @s dummy_z = @s goto_z
scoreboard players operation @s dummy_yaw = @s goto_yaw
scoreboard players operation @s dummy_pitch = @s goto_pitch

#ok HERE WE GO
execute positioned 0 0 0 rotated 0 0 run function phan:warp_to_saved_coords/x/_pos_or_neg