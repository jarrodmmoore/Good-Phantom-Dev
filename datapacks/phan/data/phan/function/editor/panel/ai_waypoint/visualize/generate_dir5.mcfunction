#color and target id are arguments
execute unless score @s AIBC_event matches 9 run data modify storage phan:ai_waypoint text set value "yellow"
execute if score @s AIBC_event matches 9 run data modify storage phan:ai_waypoint text set value "pearl"
execute store result storage phan:ai_waypoint number int 1 run scoreboard players get @s AIBC_modifier
scoreboard players operation #test value = @s AIBC_modifier

function phan:editor/panel/ai_waypoint/visualize/generate_dir_macro with storage phan:ai_waypoint