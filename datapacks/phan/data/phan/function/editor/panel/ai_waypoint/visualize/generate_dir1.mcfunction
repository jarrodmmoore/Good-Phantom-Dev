#color and target id are arguments
data modify storage phan:ai_waypoint text set value "light_green"
execute store result storage phan:ai_waypoint number int 1 run scoreboard players get @s AIBC_dir1
scoreboard players operation #test value = @s AIBC_dir1

function phan:editor/panel/ai_waypoint/visualize/generate_dir_macro with storage phan:ai_waypoint