#macro arguments
execute store result storage phan:coords coord_x int 1 run scoreboard players get @s goto_x
execute store result storage phan:coords coord_y int 1 run scoreboard players get @s goto_y
execute store result storage phan:coords coord_z int 1 run scoreboard players get @s goto_z
execute store result storage phan:coords coord_yaw int 1 run scoreboard players get @s goto_yaw
execute store result storage phan:coords coord_pitch int 1 run scoreboard players get @s goto_pitch

#do the teleport (may or may not respect the angle)
execute if entity @s[tag=keepRotation] positioned 0 0 0 run return run function phan:warp_to_saved_coords/teleport_without_rotation with storage phan:coords
execute positioned 0 0 0 rotated 0 0 run function phan:warp_to_saved_coords/teleport_with_rotation with storage phan:coords