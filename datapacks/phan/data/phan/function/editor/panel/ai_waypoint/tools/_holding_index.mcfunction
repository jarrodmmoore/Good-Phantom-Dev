#if holding ANY ai waypoint editor item, visualize nearby waypoints
execute if score #playersInEditMode value matches ..1 run function phan:editor/panel/ai_waypoint/visualize/_tick

#use item upon right click
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] run function phan:editor/panel/ai_waypoint/tools/_use_index

#highlight nearest waypoint when holding the connector
execute if items entity @s weapon.mainhand *[custom_data~{waypointConnector:1b}] anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/highlight_nearest_waypoint
