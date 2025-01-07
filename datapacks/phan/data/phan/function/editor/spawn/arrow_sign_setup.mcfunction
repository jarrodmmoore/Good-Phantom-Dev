#use the rotation part of my parameterized teleport thing
scoreboard players operation @s goto_yaw = #editYaw value
scoreboard players operation @s goto_pitch = #editPitch value
function phan:warp_to_saved_coords/_go_rotate_only
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch

#tag cleanup
tag @s remove setMe