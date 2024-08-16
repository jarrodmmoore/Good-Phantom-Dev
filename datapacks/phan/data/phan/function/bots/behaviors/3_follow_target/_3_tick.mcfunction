#only move if we have something to move at
execute if score @s botTargetPriority matches 1..99 run scoreboard players set #botWantsToMove value 1

#if we're above a pit with a weird rotation modifier, jump and cancel it
execute unless score @s botHookModifier matches 0 if score @s botMoveState matches 0..1 if block ~ ~-1 ~ #phan:not_solid if block ~ ~-2 ~ #phan:not_solid if block ~ ~-3 ~ #phan:not_solid run function phan:bots/behaviors/3_follow_target/cancel_hook_modifier

#forget about following a mid-air waypoint
tag @s[tag=botFollowingMidAir] remove botFollowingMidAir

#we will eventually time out and stop trying to follow
scoreboard players add @s botChaseTime 1
execute if score @s botChaseTime matches 80.. run function phan:bots/behaviors/3_follow_target/consider_giving_up

#not prioritizing (chasing) anything anymore? switch to roam mode
execute unless score @s botTargetPriority matches 1..99 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_swift_check
execute if score @s botTargetID matches 0 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_swift_check
