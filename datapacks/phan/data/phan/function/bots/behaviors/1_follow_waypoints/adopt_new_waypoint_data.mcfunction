#interpret and do event
scoreboard players set #botChoseAltRoute value 0
execute if score #waypointEvent value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/event/_event_index

#lower skill bots might take a pause during parkour segments
execute if score #success value matches 2 if score #waypointEvent value matches 1..2 if entity @s[scores={onGround=1..,botJumpTimer=-1}] run function phan:bots/behaviors/1_follow_waypoints/possible_pause_before_jump

#apply new hook
scoreboard players set @s botHookBase 0
execute if score #waypointHook value matches 1 run scoreboard players set @s botHookBase 25
execute if score #waypointHook value matches 1 run function phan:bots/behaviors/1_follow_waypoints/spread/rotate_bias_left
execute if score #waypointHook value matches 2 run scoreboard players set @s botHookBase -25
execute if score #waypointHook value matches 2 run function phan:bots/behaviors/1_follow_waypoints/spread/rotate_bias_right
#if the waypoint wants us to hook both left and right, pick a random value between the two
execute if score #waypointHook value matches 3 store result score @s botHookBase run random value 0..50
execute if score #waypointHook value matches 3 run scoreboard players remove @s botHookBase 25

#choose which direction to go if we didn't take an alt route
execute if score #botChoseAltRoute value matches 0 run function phan:bots/behaviors/1_follow_waypoints/pick_direction/_index
scoreboard players set @s botTargetWaypoint 0
execute if score @s botLastDirection matches 1 run scoreboard players operation @s botTargetWaypoint = #waypointDir1 value
execute if score @s botLastDirection matches 2 run scoreboard players operation @s botTargetWaypoint = #waypointDir2 value
execute if score @s botLastDirection matches 3 run scoreboard players operation @s botTargetWaypoint = #waypointDir3 value
execute if score @s botLastDirection matches 4 run scoreboard players operation @s botTargetWaypoint = #waypointDir4 value
execute if score #botChoseAltRoute value matches 1 run scoreboard players operation @s botTargetWaypoint = #waypointModifier value

#target the next waypoint
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botTargetWaypoint
function phan:bots/behaviors/1_follow_waypoints/find_targeted_waypoint with storage phan:bot_args