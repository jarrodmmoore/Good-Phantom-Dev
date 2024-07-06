#show waypoints near editor players
execute as @a[tag=phan_edit] at @s run tag @e[type=marker,tag=AIBC,distance=..50,limit=25,sort=nearest] add waypointVisual
tag @e[tag=AIBC,tag=waypointSelected] add waypointVisual
execute as @e[type=marker,tag=waypointVisual] at @s positioned ~ ~.2 ~ run function phan:editor/panel/ai_waypoint/visualize/waypoint_go

#clean-up
tag @e[type=marker,tag=waypointVisual] remove waypointSpawn