#executed by an ai waypoint

#show particle
particle dust{color:[1.0,0.0,0.0],scale:1.2} ~ ~ ~

#selected particle
execute if entity @s[tag=selectedWaypoint] run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 1 force

#show name above head
execute store result storage phan:ai_waypoint number int 1 run scoreboard players get @s AIBC_id
execute if score #5Hz value matches 0 run function phan:editor/panel/ai_waypoint/visualize/show_name with storage phan:ai_waypoint

#show what event we have
execute if score #2sec value matches 0 if score @s AIBC_event matches 1.. positioned ~ ~1 ~ run function phan:editor/panel/ai_waypoint/visualize/event_type

#generate trails to show what we're pointing at
execute if score #2sec value matches 10 run function phan:editor/panel/ai_waypoint/visualize/generate_trails
execute if score #2sec value matches 30 run function phan:editor/panel/ai_waypoint/visualize/generate_trails

#clean up tag
tag @s remove waypointVisual