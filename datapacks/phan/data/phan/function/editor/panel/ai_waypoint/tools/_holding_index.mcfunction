#if holding waypoint spread tool, visualize spread of nearby waypoints
execute if items entity @s weapon.mainhand stick[custom_data~{waypointShowSpreads:1b}] as @e[type=marker,tag=AIBC,distance=..30,limit=50,sort=nearest] at @s positioned ~ ~.2 ~ run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread

#if holding optimal spread tool, visualize optimal spread of nearby waypoints
execute if items entity @s weapon.mainhand stick[custom_data~{waypointOptimal:1b}] as @e[type=marker,tag=AIBC,distance=..30,limit=50,sort=nearest] at @s positioned ~ ~.2 ~ run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_optimal


#use item on right click
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0}] run function phan:editor/panel/ai_waypoint/tools/_use_index

#highlight nearest waypoint when holding the connector
execute if items entity @s weapon.mainhand *[custom_data~{waypointHighlightOnHold:1b}] unless score @s AIBC_mode matches 3..4 anchored eyes positioned ^ ^ ^2 run function phan:editor/panel/ai_waypoint/tools/highlight_nearest_waypoint
