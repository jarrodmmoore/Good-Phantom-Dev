scoreboard players remove #recursions value 1
scoreboard players add #wpCeiling value 10

execute if score #recursions value matches 1.. positioned ~ ~1 ~ if block ~ ~ ~ #phan:not_solid run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target_check_ceiling