#special editor states are used when the player has a singular waypoint selected that they are doing stuff with
execute if score @s AIBC_mode matches 1 run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_tick
execute if score @s AIBC_mode matches 2 run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/active_tick
execute if score @s AIBC_mode matches 3 run function phan:editor/panel/ai_waypoint/tools/waypoint_spread/active_tick
execute if score @s AIBC_mode matches 4 run function phan:editor/panel/ai_waypoint/tools/waypoint_optimal/active_tick
