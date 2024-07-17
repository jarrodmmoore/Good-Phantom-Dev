#handle differently if flying
execute if score @s fallFlying matches 1.. run return run function phan:bots/behaviors/1_follow_waypoints/in_range_gliding
#=====

#not flying? must be in range
scoreboard players set #test value 0
execute if score #testY value matches -30.. if score @s location_yy <= @s botTargetYYCeiling run function phan:bots/behaviors/1_follow_waypoints/in_range_xyz

#try to collect the waypoint if test succeeds
execute if score #test value matches 0 run return 0
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botTargetWaypoint
function phan:bots/behaviors/1_follow_waypoints/try_collect_waypoint with storage phan:bot_args