#these aecs die fast and never get scores so hopefully they won't bloat scoreboard.dat or entity region files

#show name
execute if score @s editNode matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.big_ring","color":"light_purple"}]'}
execute if score @s editNode matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.lil_ring","color":"light_purple"}]'}
execute if score @s editNode matches 3 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.blue_big_ring","color":"aqua"}]'}
execute if score @s editNode matches 4 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.blue_lil_ring","color":"aqua"}]'}
execute if score @s editNode matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.ever_eye","color":"yellow"}]'}
execute if score @s editNode matches 6 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.stardust","color":"aqua"}]'}
execute if score @s editNode matches 7 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.area_transition_end","color":"white"}]'}
execute if score @s editNode matches 8 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.portal_core","color":"white"}]'}
execute if score @s editNode matches 9 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.portal_slot","color":"white"}]'}
execute if score @s editNode matches 10 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.clock","color":"red"}]'}
execute if score @s editNode matches 11 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.firework","color":"red"}]'}
execute if score @s editNode matches 12 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.present","color":"light_purple"}]'}
execute if score @s editNode matches 13 run function phan:editor/node_visualize/name/baddie
execute if score @s editNode matches 14 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.small_target","color":"red"}]'}
execute if score @s editNode matches 15 run function phan:editor/node_visualize/name/chest
#...
execute if score @s editNode matches 17 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.big_target","color":"red"}]'}
execute if score @s editNode matches 18 if score @s editArg2 matches 0 run function phan:editor/node_visualize/name/checkpoint
execute if score @s editNode matches 18 unless score @s editArg2 matches 0 run function phan:editor/node_visualize/name/checkpoint_optional
execute if score @s editNode matches 18 if entity @s[tag=posCalc] run summon area_effect_cloud ~ ~.8 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.position_calc_point","color":"blue"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkWarn] run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.missed_cp_warning","color":"red"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkWrongWay] run summon area_effect_cloud ~ ~1.2 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.wrong_way_warning","color":"red"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkFlyRespawn] run summon area_effect_cloud ~ ~1.4 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.launch_upward_on_respawn","color":"aqua"}]'}
execute if score @s editNode matches 19 run function phan:editor/node_visualize/name/player_start_vs
execute if score @s editNode matches 20 run function phan:editor/node_visualize/name/reset_zone_vs
execute if score @s editNode matches 21 run function phan:editor/node_visualize/name/reset_zone_sa
execute if score @s editNode matches 22 run function phan:editor/node_visualize/name/loading_zone
execute if score @s editNode matches 23 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.ever_eye_spawn","color":"yellow"}]'}
execute if score @s editNode matches 24 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.hidden_music_disc","color":"gold"}]'}
execute if score @s editNode matches 25 run function phan:editor/node_visualize/name/podium_spawner
execute if score @s editNode matches 26 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.podium_camera","color":"white"}]'}

#show area
execute if score @s editArea matches 1 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a1","color":"white"}]'}
execute if score @s editArea matches 2 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a2","color":"white"}]'}
execute if score @s editArea matches 3 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a3","color":"white"}]'}
execute if score @s editArea matches 4 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a4","color":"white"}]'}

#show loading section
execute if score @s editLoadArea matches 0 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l0","color":"white"}]'}
execute if score @s editLoadArea matches 1 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l1","color":"white"}]'}
execute if score @s editLoadArea matches 2 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l2","color":"white"}]'}
execute if score @s editLoadArea matches 3 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l3","color":"white"}]'}
execute if score @s editLoadArea matches 4 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l4","color":"white"}]'}
execute if score @s editLoadArea matches 5 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l5","color":"white"}]'}

#special visualization?
execute if score @s editNode matches 5..6 if score @s editArg2 matches 1.. run function phan:editor/node_visualize/spawn_recursion
execute if entity @s[tag=checkpoint,scores={visualLength=1..,editArg2=0}] run function phan:game/4/checkpoint_visual/start_editor