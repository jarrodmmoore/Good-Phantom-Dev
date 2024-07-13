#executed by an ai waypoint

#get data from rotation
execute store result score #waypointSpreadX value run data get entity @s Rotation[0] 10
execute store result score #waypointSpreadZ value run data get entity @s Rotation[1] 10

#abort if no spread or invalid spread
execute if score #waypointSpreadX value matches 0 if score #waypointSpreadZ value matches 0 run return 0
execute if score #waypointSpreadX value matches 11.. run return run particle falling_dust{block_state:"obsidian"} ~ ~.3 ~ 0 0 0 0 1 force
execute if score #waypointSpreadZ value matches 11.. run return run particle falling_dust{block_state:"obsidian"} ~ ~.3 ~ 0 0 0 0 1 force

#macro for random particle location
scoreboard players set #recursions value 0
execute store result storage phan:ai_waypoint spread_x int 1 run scoreboard players get #waypointSpreadX value
execute store result storage phan:ai_waypoint spread_z int 1 run scoreboard players get #waypointSpreadZ value
function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_randomize with storage phan:ai_waypoint
execute if score #waypointSpreadX value matches 4.. run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_randomize with storage phan:ai_waypoint
execute if score #waypointSpreadZ value matches 4.. run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_randomize with storage phan:ai_waypoint
execute if score #waypointSpreadX value matches 4.. if score #waypointSpreadZ value matches 4.. run function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_randomize with storage phan:ai_waypoint