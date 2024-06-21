#these aecs die fast and never get scores so hopefully they won't bloat scoreboard.dat or entity region files

#show name
execute if score @s editNode matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"big ring","color":"light_purple"}]'}
execute if score @s editNode matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"lil ring","color":"light_purple"}]'}
execute if score @s editNode matches 3 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"big ring","color":"aqua"}]'}
execute if score @s editNode matches 4 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"lil ring","color":"aqua"}]'}
execute if score @s editNode matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"ever eye","color":"yellow"}]'}
execute if score @s editNode matches 6 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"stardust","color":"aqua"}]'}
execute if score @s editNode matches 7 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"area transition endpoint","color":"white"}]'}
execute if score @s editNode matches 8 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"PORTAL CORE","color":"white"}]'}
execute if score @s editNode matches 9 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"PORTAL SLOT","color":"white"}]'}
execute if score @s editNode matches 10 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"CLOCK","color":"red"}]'}
execute if score @s editNode matches 11 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"firework","color":"red"}]'}
execute if score @s editNode matches 12 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"PRESENT","color":"light_purple"}]'}
execute if score @s editNode matches 13 run function phan:editor/node_visualize_name_baddie
execute if score @s editNode matches 14 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"target (block)","color":"red"}]'}
execute if score @s editNode matches 15 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"item box","color":"light_purple"}]'}
execute if score @s editNode matches 15 run function phan:editor/node_visualize_name_chest
#...
execute if score @s editNode matches 17 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"target (entity)","color":"red"}]'}
execute if score @s editNode matches 18 if score @s editArg2 matches 0 run function phan:editor/node_visualize_name_checkpoint
execute if score @s editNode matches 18 unless score @s editArg2 matches 0 run function phan:editor/node_visualize_name_checkpoint_optional
execute if score @s editNode matches 18 if entity @s[tag=posCalc] run summon area_effect_cloud ~ ~.8 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"position calc point","color":"blue"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkWarn] run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"missed cp warning","color":"red"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkWrongWay] run summon area_effect_cloud ~ ~1.2 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"wrong way warning","color":"red"}]'}
execute if score @s editNode matches 18 if entity @s[tag=checkFlyRespawn] run summon area_effect_cloud ~ ~1.4 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"launch upward on respawn","color":"aqua"}]'}
execute if score @s editNode matches 19 run function phan:editor/node_visualize_name_player_start_vs
execute if score @s editNode matches 20 run function phan:editor/node_visualize_name_reset_zone_vs
execute if score @s editNode matches 21 run function phan:editor/node_visualize_name_reset_zone_sa
execute if score @s editNode matches 22 run function phan:editor/node_visualize_name_loading_zone
execute if score @s editNode matches 23 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"EVER EYE SPAWN (VS)","color":"yellow"}]'}
execute if score @s editNode matches 24 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"HIDDEN MUSIC DISC","color":"gold"}]'}

#show area
execute if score @s editArea matches 1 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a1","color":"white"}]'}
execute if score @s editArea matches 2 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a2","color":"white"}]'}
execute if score @s editArea matches 3 positioned ~ ~.44 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"a3","color":"white"}]'}

#show loading section
execute if score @s editLoadArea matches 0 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l0","color":"white"}]'}
execute if score @s editLoadArea matches 1 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l1","color":"white"}]'}
execute if score @s editLoadArea matches 2 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l2","color":"white"}]'}
execute if score @s editLoadArea matches 3 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l3","color":"white"}]'}
execute if score @s editLoadArea matches 4 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l4","color":"white"}]'}
execute if score @s editLoadArea matches 5 positioned ~ ~.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"l5","color":"white"}]'}

#special visualization?
execute if score @s editNode matches 5..6 if score @s editArg2 matches 1.. run function phan:editor/node_visualize_spawn_recursion
execute if entity @s[tag=checkpoint,scores={visualLength=1..,editArg2=0}] run function phan:game/4/checkpoint_visual/start_editor