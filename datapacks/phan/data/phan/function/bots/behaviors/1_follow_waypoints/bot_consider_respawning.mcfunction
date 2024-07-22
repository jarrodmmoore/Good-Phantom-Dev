#try to find waypoints we can re-route to if we're allowed to
scoreboard players set #foundNode value 0
execute if score @s botAllowedReroutes matches 1.. at @s run function phan:bots/behaviors/1_follow_waypoints/reroute_try
execute if score #foundNode value matches 1 run return 0

#respawn
tag @s add botRespawn