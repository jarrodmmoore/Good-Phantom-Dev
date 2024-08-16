#re-open waypoint edit menu if we're modifying a waypoint
execute if score @s AIBC_mode matches 2 run return run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/_menu

#otherwise go to spawn menu
function phan:editor/panel/ai_waypoint/_spawn_menu