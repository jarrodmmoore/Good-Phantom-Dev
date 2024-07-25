#go for the nearest waypoint that isn't mid-air
execute if entity @s[tag=!botUseNearestSpread] run scoreboard players set #getChildIDs value 1
execute as @e[limit=1,sort=nearest,type=marker,tag=AIBC,tag=!AIBC_midAir] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#if not using nearest spread, check if we can target the next breadcrumb from the nearest waypoint we found
#(this helps reduce bots going in the wrong direction for a moment and then doing a 180)
execute if entity @s[tag=!botUseNearestSpread] unless score #wpDir1 value matches -1 run function phan:bots/behaviors/1_follow_waypoints/check_los_to_children_of_nearest_waypoint

#hook should be 0. we should go directly at the target
scoreboard players set @s botHookBase 0

#figure out spread
execute if entity @s[tag=botUseNearestSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/use_nearest
execute if entity @s[tag=!botUseNearestSpread,tag=!botIgnoreSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/do_a_spread
tag @s[tag=botIgnoreSpread] remove botIgnoreSpread
function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates

#clean-up
tag @s remove botUseNearestSpread
tag @s remove botTargetNearestWP