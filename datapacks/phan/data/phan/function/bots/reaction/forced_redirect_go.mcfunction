#hook should be 0. we should go directly at the target
scoreboard players set @s botHookBase 0

#we should be in waypoint following mode
scoreboard players set @s botBehavior 1

#figure out spread
function phan:bots/behaviors/1_follow_waypoints/spread/do_a_spread
function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates