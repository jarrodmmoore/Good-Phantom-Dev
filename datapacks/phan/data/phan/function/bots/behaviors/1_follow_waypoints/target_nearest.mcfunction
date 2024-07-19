#go for the nearest waypoint that isn't mid-air
execute as @e[limit=1,sort=nearest,type=marker,tag=AIBC,tag=!AIBC_midAir] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#hook should be 0. we should go directly at the target
scoreboard players set @s botHookBase 0

#figure out spread
execute if entity @s[tag=botUseNearestSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/use_nearest
execute if entity @s[tag=!botUseNearestSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/do_a_spread
function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates

#clean-up
tag @s remove botUseNearestSpread
tag @s remove botTargetNearestWP