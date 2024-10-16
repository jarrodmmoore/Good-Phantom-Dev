#macros! not... so surprising anymore after coding the Portal Race bots

#store desired coordinate
execute unless score @s editArg1 matches 1..3 run data modify storage phan:node_name podium_place set value "INVALID"
execute if score @s editArg1 matches 1 run data modify storage phan:node_name podium_place set value "gp.versus.pos.1st"
execute if score @s editArg1 matches 2 run data modify storage phan:node_name podium_place set value "gp.versus.pos.2nd"
execute if score @s editArg1 matches 3 run data modify storage phan:node_name podium_place set value "gp.versus.pos.3rd"

execute unless score @s editArg2 matches 1 run data modify storage phan:node_name podium_size set value "4x4"
execute if score @s editArg2 matches 1 run data modify storage phan:node_name podium_size set value "5x5"

#spawn thing with proper name
function phan:editor/node_visualize/name/podium_spawner_macro with storage phan:node_name