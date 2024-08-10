#get instant jump boost if the waypoint gave that to us
execute if score #waypointJumpBoost value matches 1 run function phan:bots/movement/jump_pad_short
execute if score #waypointJumpBoost value matches 2 run function phan:bots/movement/jump_pad_high

#handle and reset any old event stuff
scoreboard players reset @s[scores={botRouteAfterExplosionBoost=-2147483648..2147483647}] botRouteAfterExplosionBoost
execute if entity @s[tag=botSetMineAtNextWaypoint] run function phan:bots/behaviors/1_follow_waypoints/event/13_mine_logic/try_place_mine_at_waypoint

#interpret and do event if we have one
scoreboard players set #botChoseAltRoute value 0
execute unless score #waypointEvent value matches 0 run function phan:bots/behaviors/1_follow_waypoints/event/_event_index

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
execute if score #botCheckTrapsAltRoute value matches 1 unless entity @s[tag=botImprovFlight] run function phan:bots/behaviors/1_follow_waypoints/pick_direction/_index_check_all
execute if score #botChoseAltRoute value matches 0 unless entity @s[tag=botImprovFlight] run function phan:bots/behaviors/1_follow_waypoints/pick_direction/_index
execute if entity @s[tag=botImprovFlight] unless score #botChoseAltRoute value matches 2 run function phan:bots/behaviors/1_follow_waypoints/pick_direction/_index_improv_flight
scoreboard players set @s botTargetWaypoint 0
execute if score @s botLastDirection matches 1 run scoreboard players operation @s botTargetWaypoint = #waypointDir1 value
execute if score @s botLastDirection matches 2 run scoreboard players operation @s botTargetWaypoint = #waypointDir2 value
execute if score @s botLastDirection matches 3 run scoreboard players operation @s botTargetWaypoint = #waypointDir3 value
execute if score @s botLastDirection matches 4 run scoreboard players operation @s botTargetWaypoint = #waypointDir4 value
execute if score #botChoseAltRoute value matches 1.. run scoreboard players operation @s botTargetWaypoint = #waypointModifier value
scoreboard players set #botCheckTrapsAltRoute value 0

#waypoint had NO directions on it? enter roam mode right away
execute if score @s botTargetWaypoint matches 0 run tellraw @a[tag=phan_edit] ["",{"text":"[EDIT WARNING] Bot reached a waypoint with no valid outgoing directions.","color":"red"},{"text":" located "},{"score":{"name":"@s","objective":"location_x"}},{"text":" "},{"score":{"name":"@s","objective":"location_y"}},{"text":" "},{"score":{"name":"@s","objective":"location_z"}}]
execute if score @s botTargetWaypoint matches 0 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary

#target the next waypoint
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botTargetWaypoint
function phan:bots/behaviors/1_follow_waypoints/find_targeted_waypoint with storage phan:bot_args