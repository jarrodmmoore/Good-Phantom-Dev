#show waypoints near editor players who are interested in AI waypoints
execute as @a[tag=phan_edit,scores={editorState=3}] at @s as @e[type=marker,tag=AIBC,distance=..50,limit=25,sort=nearest] at @s if loaded ~ ~ ~ run tag @s add waypointVisual
tag @e[tag=AIBC,tag=selectedWaypoint] add waypointVisual
execute as @e[type=marker,tag=waypointVisual] at @s positioned ~ ~.2 ~ run function phan:editor/panel/ai_waypoint/visualize/waypoint_go