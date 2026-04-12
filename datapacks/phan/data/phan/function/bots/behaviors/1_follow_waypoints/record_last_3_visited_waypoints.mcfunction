#are we backtracking right now? low skill bots may take pause
execute if score @s botTargetWaypoint = @s botLastVisitedWP1 run function phan:bots/behaviors/1_follow_waypoints/possible_pause_before_backtracking
execute if score @s botTargetWaypoint = @s botLastVisitedWP2 run function phan:bots/behaviors/1_follow_waypoints/possible_pause_before_backtracking
execute if score @s botTargetWaypoint = @s botLastVisitedWP3 run function phan:bots/behaviors/1_follow_waypoints/possible_pause_before_backtracking

#cycle 1 through 3
scoreboard players add @s botLastVisitedWPPointer 1
execute if score @s botLastVisitedWPPointer matches 4.. run scoreboard players set @s botLastVisitedWPPointer 1

#record it
execute if score @s botLastVisitedWPPointer matches 1 run scoreboard players operation @s botLastVisitedWP1 = @s botTargetWaypoint
execute if score @s botLastVisitedWPPointer matches 2 run scoreboard players operation @s botLastVisitedWP2 = @s botTargetWaypoint
execute if score @s botLastVisitedWPPointer matches 3 run scoreboard players operation @s botLastVisitedWP3 = @s botTargetWaypoint
