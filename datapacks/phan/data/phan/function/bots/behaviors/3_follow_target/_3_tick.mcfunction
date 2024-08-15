#only move if we have something to move at
execute if score @s botTargetPriority matches 1..99 run scoreboard players set #botWantsToMove value 1

#not prioritizing (chasing) anything anymore? switch to roam mode
execute unless score @s botTargetPriority matches 1..99 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_swift_check
execute if score @s botTargetID matches 0 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_swift_check
