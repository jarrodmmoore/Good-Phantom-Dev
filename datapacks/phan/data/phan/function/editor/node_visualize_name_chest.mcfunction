#macros! oh no!

#store desired coodinate
execute store result storage phan:node_name cluster_group int 1 run scoreboard players get @s editArg1
execute store result storage phan:node_name player_count int 1 run scoreboard players get @s editArg2

#spawn thing with proper name
function phan:editor/node_visualize_name_chest_macro with storage phan:node_name