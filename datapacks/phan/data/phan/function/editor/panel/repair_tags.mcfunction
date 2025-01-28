#kick out if not loaded
execute unless loaded ~ ~ ~ run return 0
#=====

execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#this will also update rotation
scoreboard players operation @s goto_yaw = @s editYaw
scoreboard players operation @s goto_pitch = @s editPitch
function phan:warp_to_saved_coords/_go_rotate_only
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch

#tags
function phan:editor/panel/repair_tags_go