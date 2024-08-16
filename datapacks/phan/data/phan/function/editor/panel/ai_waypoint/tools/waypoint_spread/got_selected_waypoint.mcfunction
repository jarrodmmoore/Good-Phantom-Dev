particle entity_effect{color:[1.0,1.0,1.0,1.0]} ~ ~.15 ~ 0.1 0.1 0.1 0 2 force

#get difference between coords of player and waypoint
execute store result score #waypointSpreadX value run data get entity @s Pos[0]
execute store result score #waypointSpreadZ value run data get entity @s Pos[2]
scoreboard players operation #waypointSpreadX value -= #coord_x value
scoreboard players operation #waypointSpreadZ value -= #coord_z value
#need absolute value
execute if score #waypointSpreadX value matches ..-1 run scoreboard players operation #waypointSpreadX value *= #-1 value
execute if score #waypointSpreadZ value matches ..-1 run scoreboard players operation #waypointSpreadZ value *= #-1 value
#cap it at 10
execute if score #waypointSpreadX value matches 11.. run scoreboard players set #waypointSpreadX value 10
execute if score #waypointSpreadZ value matches 11.. run scoreboard players set #waypointSpreadZ value 10

#convert spread values to rotation coordinates
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/convert_spread_to_rotation_coords

#dx and dz become our spread values
execute at @s run function phan:editor/panel/ai_waypoint/tools/waypoint_spread/update_spread with storage phan:ai_waypoint