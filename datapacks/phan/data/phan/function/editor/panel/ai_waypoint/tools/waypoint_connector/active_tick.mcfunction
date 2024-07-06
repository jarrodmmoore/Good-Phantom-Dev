#exit mode if we put the stick away
execute unless items entity @s weapon.mainhand stick[custom_data~{waypointConnector:1b}] run scoreboard players set @s AIBC_mode 0

#also exit if we're trying to set an invalid direction
execute unless score @s AIBC_set_dir matches 1..5 run scoreboard players set @s AIBC_mode 0

#draw a line from source to us
execute store result storage phan:ai_waypoint selection int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/waypoint_connector/active_draw_line with storage phan:ai_waypoint