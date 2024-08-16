#handle differently if gliding
execute if score @s fallFlying matches 1.. run return run function phan:bots/behaviors/1_follow_waypoints/in_range_gliding
#=====

#not flying? must be in range
scoreboard players set #test value 0
execute if score #testY value matches ..30 if score @s location_yy <= @s botTargetYYCeiling run function phan:bots/behaviors/1_follow_waypoints/in_range_xyz

#try to collect the waypoint if test succeeds
execute if score #test value matches 2.. run function phan:bots/behaviors/1_follow_waypoints/in_range_go