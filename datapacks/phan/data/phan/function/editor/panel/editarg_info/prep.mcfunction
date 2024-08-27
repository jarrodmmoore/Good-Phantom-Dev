#big ring
execute if score @s editNode matches 1 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.big_ring"}]'
#lil ring
execute if score @s editNode matches 2 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.lil_ring"}]'
#boost ring
execute if score @s editNode matches 3 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.blue_big_ring"}]'
#lil boost ring
execute if score @s editNode matches 4 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.blue_lil_ring"}]'
#ever eye
execute if score @s editNode matches 5 run function phan:editor/panel/editarg_info/5_ender_eye
#stardust
execute if score @s editNode matches 6 run function phan:editor/panel/editarg_info/6_stardust
#area transition endpoint
execute if score @s editNode matches 7 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.area_transition_end"}]'
#portal core
execute if score @s editNode matches 8 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.portal_core"}]'
#portal slot
execute if score @s editNode matches 9 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.portal_slot"}]'
#clock
execute if score @s editNode matches 10 run function phan:editor/panel/editarg_info/10_clock
#firework
execute if score @s editNode matches 11 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.firework"}]'
#present
execute if score @s editNode matches 12 run function phan:editor/panel/editarg_info/12_present
#baddie
execute if score @s editNode matches 13 run function phan:editor/panel/editarg_info/13_baddie
#small target
execute if score @s editNode matches 14 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.small_target"}]'
#item box
execute if score @s editNode matches 15 run function phan:editor/panel/editarg_info/15_item_box
#arrow sign type
execute if score @s editNode matches 16 run function phan:editor/panel/editarg_info/16_arrow_sign
#big target entity
execute if score @s editNode matches 17 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.big_target"}]'
#checkpoint
execute if score @s editNode matches 18 run function phan:editor/panel/editarg_info/18_checkpoint
#player start
execute if score @s editNode matches 19 run function phan:editor/panel/editarg_info/19_player_start
#respawn zone (vs)
execute if score @s editNode matches 20 run function phan:editor/panel/editarg_info/20_respawn_zone_vs
#respawn zone
execute if score @s editNode matches 21 run function phan:editor/panel/editarg_info/21_respawn_zone
#loading zone
execute if score @s editNode matches 22 run function phan:editor/panel/editarg_info/22_loading_zone
#ever eye spawn point (battle)
execute if score @s editNode matches 23 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.ever_eye_spawn"}]'
#hidden music disc
execute if score @s editNode matches 24 run function phan:editor/panel/editarg_info/24_hidden_music_disc
#podium spawner (portal race)
execute if score @s editNode matches 25 run function phan:editor/panel/editarg_info/25_podium_spawner
#podium camera (portal race)
execute if score @s editNode matches 26 run data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.podium_camera"}]'
#effect sign
execute if score @s editNode matches 27 run function phan:editor/panel/editarg_info/27_effect_sign
