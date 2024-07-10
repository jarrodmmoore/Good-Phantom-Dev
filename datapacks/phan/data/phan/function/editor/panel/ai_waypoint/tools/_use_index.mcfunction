#waypoint connector
execute if items entity @s weapon.mainhand *[custom_data~{waypointConnector:1b}] run function phan:editor/panel/ai_waypoint/tools/waypoint_connector/use

#waypoint edit
execute if items entity @s weapon.mainhand *[custom_data~{waypointEdit:1b}] anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/waypoint_edit/use

#waypoint spread
execute if items entity @s weapon.mainhand *[custom_data~{waypointSpread:1b}] anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/waypoint_spread/use

#waypoint optimal spread
execute if items entity @s weapon.mainhand *[custom_data~{waypointOptimal:1b}] anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/waypoint_optimal/use

#waypoint clear
execute if items entity @s weapon.mainhand *[custom_data~{waypointClear:1b}] anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/waypoint_clear/use
