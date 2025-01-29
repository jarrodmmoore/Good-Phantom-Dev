#kick out if not loaded, or relevant scores aren't loaded
scoreboard players set #test5 value 0
execute at @s if loaded ~ ~ ~ run scoreboard players add #test5 value 1
execute if score @s editNode matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editYaw matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editPitch matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editArea matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute if score @s editLoadArea matches -2147483648..2147483647 run scoreboard players add #test5 value 1
execute unless score #clearCacheProgress value matches 1.. run scoreboard players add #test5 value 1
execute unless score #test5 value matches 7 run return 0
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