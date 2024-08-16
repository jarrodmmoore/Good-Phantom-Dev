execute if score #waypointSpreadX value matches 0 run data modify storage phan:ai_waypoint tp_x set value 0
$execute unless score #waypointSpreadX value matches 0 store result storage phan:ai_waypoint tp_x int 1 run random value -$(spread_x)..$(spread_x)

execute if score #waypointSpreadZ value matches 0 run data modify storage phan:ai_waypoint tp_z set value 0
$execute unless score #waypointSpreadZ value matches 0 store result storage phan:ai_waypoint tp_z int 1 run random value -$(spread_z)..$(spread_z)

function phan:editor/panel/ai_waypoint/visualize/waypoint_go_spread_randomize_pos with storage phan:ai_waypoint