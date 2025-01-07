#macro arguments
execute store result storage phan:coords coord_yaw int 1 run scoreboard players get @s goto_yaw
execute store result storage phan:coords coord_pitch int 1 run scoreboard players get @s goto_pitch

#do the teleport (may or may not respect the angle)
execute rotated 0 0 run function phan:warp_to_saved_coords/teleport_rotation_only with storage phan:coords