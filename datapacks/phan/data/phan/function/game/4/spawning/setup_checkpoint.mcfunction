#save our coordinates
execute store result score @s location_x run data get entity @s Pos[0] 1
execute store result score @s location_y run data get entity @s Pos[1] 1
execute store result score @s location_z run data get entity @s Pos[2] 1
execute store result score @s location_yaw run data get entity @s Rotation[0] 1
execute store result score @s location_pitch run data get entity @s Rotation[1] 1