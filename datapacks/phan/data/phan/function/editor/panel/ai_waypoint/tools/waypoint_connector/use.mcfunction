#set cooldowns
scoreboard players set @s inputCooldown 12
scoreboard players reset @s carrotInput

#nothing selected yet? select the nearest thing
execute unless score @s AIBC_mode matches 1 anchored eyes positioned ^ ^ ^2 run return run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/select_1

#if we didn't run the first part and return out, try to connect the two nodes
execute store result storage phan:ai_waypoint set_dir int 1 run scoreboard players get @s AIBC_set_dir
execute store result storage phan:ai_waypoint selection int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/waypoint_connector/select_2 with storage phan:ai_waypoint