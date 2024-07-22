scoreboard players remove #recursions value 1

#tag if we find ourselves
execute positioned ~ ~-1.2 ~ if entity @s[distance=..1] run return run tag @s add validReroute

#check forward if able
execute if score #recursions value matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #phan:not_solid if block ^ ^ ^-0.5 #phan:not_solid run function phan:bots/behaviors/1_follow_waypoints/reroute_check_los_recursive