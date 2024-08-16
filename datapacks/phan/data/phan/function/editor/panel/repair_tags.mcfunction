execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#this will also update rotation
scoreboard players operation @s dummy_yaw = @s editYaw
scoreboard players operation @s dummy_pitch = @s editPitch
scoreboard players operation @s goto_yaw = @s editYaw
scoreboard players operation @s goto_pitch = @s editPitch
execute at @s positioned ~ ~ ~ rotated 0 0 run function phan:warp_to_saved_coords/yaw/_pos_or_neg
scoreboard players reset @s dummy_yaw
scoreboard players reset @s dummy_pitch
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch

#tags
function phan:editor/panel/repair_tags_go