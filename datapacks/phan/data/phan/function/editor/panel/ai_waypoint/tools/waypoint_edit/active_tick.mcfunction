#exit mode if we put the stick away
execute unless items entity @s weapon.mainhand stick[custom_data~{waypointEdit:1b}] run return run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/abort

#exit if we have an invalid selection score
execute if score @s AIBC_selected matches 0 run return run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/abort
execute unless score @s AIBC_selected matches -2147483648..2147483647 run return run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/abort

#highlight selected waypoint
execute store result storage phan:ai_waypoint selection int 1 run scoreboard players get @s AIBC_selected
function phan:editor/panel/ai_waypoint/tools/highlight_selected_waypoint with storage phan:ai_waypoint