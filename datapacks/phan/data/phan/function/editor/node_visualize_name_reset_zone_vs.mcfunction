#macros! oh my!

#store desired coodinate
execute store result storage phan:node_name reset_check_min int 1 run scoreboard players get @s editArg1
execute store result storage phan:node_name reset_check_max int 1 run scoreboard players get @s editArg2

#spawn thing with proper name
function phan:editor/node_visualize_name_reset_zone_vs_macro with storage phan:node_name