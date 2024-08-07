#primary title
execute if score @s editArg3 matches ..0 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.item_box","color":"light_purple"}]'}
execute if score @s editArg3 matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.item_box","color":"white"}]'}

#macros! oh no!

#store desired coodinate
execute store result storage phan:node_name cluster_group int 1 run scoreboard players get @s editArg1
execute store result storage phan:node_name player_count int 1 run scoreboard players get @s editArg2

#spawn thing with proper name
function phan:editor/node_visualize_name_chest_macro with storage phan:node_name