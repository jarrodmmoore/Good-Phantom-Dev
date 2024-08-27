#use the rotation part of my parameterized teleport thing
scoreboard players operation @s dummy_yaw = #editYaw value
scoreboard players operation @s dummy_pitch = #editPitch value
scoreboard players operation @s goto_yaw = #editYaw value
scoreboard players operation @s goto_pitch = #editPitch value
execute positioned ~ ~ ~ rotated 0 0 run function phan:warp_to_saved_coords/yaw/_pos_or_neg
scoreboard players reset @s dummy_yaw
scoreboard players reset @s dummy_pitch
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch

#tag cleanup
tag @s remove setMe