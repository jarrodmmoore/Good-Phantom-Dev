#go for the nearest waypoint

#remove following mid-air tag
tag @s[tag=botFollowingMidAir] remove botFollowingMidAir

#get ready to do stuff...
scoreboard players set #foundNode value 0
scoreboard players set #oldWpX value -2147483648

#prep: should we be concerned with checking the children of whatever we target?
execute if entity @s[tag=!botUseNearestSpread] run scoreboard players set #getChildIDs value 1

#if we're gliding (or will soon be gliding), target the nearest mid-air waypoint
scoreboard players set #setGoal value 0
execute if entity @s[tag=botTargetMidAir] run scoreboard players set #setGoal value 1
execute if entity @s[scores={botMoveState=3}] run scoreboard players set #setGoal value 1
execute if score #setGoal value matches 1 as @e[limit=1,sort=nearest,type=marker,distance=..60,tag=AIBC,tag=AIBC_midAir,tag=!AIBC_deadEnd] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#otherwise, target a grounded waypoint
execute if score #setGoal value matches 0 as @e[limit=1,sort=nearest,type=marker,distance=..60,tag=AIBC,tag=!AIBC_midAir,tag=!AIBC_deadEnd] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#no target was found? exit out and do some stuck logic
execute if score #foundNode value matches 0 run return run function phan:bots/behaviors/1_follow_waypoints/bot_consider_respawning
#=====

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
tag @s[tag=botTargetNearestWP] remove botTargetNearestWP
tag @s[tag=botTargetMidAir] remove botTargetMidAir