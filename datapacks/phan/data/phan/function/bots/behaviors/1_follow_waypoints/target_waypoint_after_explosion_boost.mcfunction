#target the specified waypoint
scoreboard players set #foundNode value 0
scoreboard players set #summonTargetAtWaypoint value 1
$execute as @e[limit=1,sort=nearest,type=marker,distance=..60,tag=AIBC,scores={AIBC_id=$(id)}] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target
$execute if score #foundNode value matches 0 as @e[limit=1,sort=nearest,type=marker,distance=..300,tag=AIBC,scores={AIBC_id=$(id)}] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#figure out spread
execute if entity @s[tag=botUseNearestSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/use_nearest
execute if entity @s[tag=!botUseNearestSpread,tag=!botIgnoreSpread] run function phan:bots/behaviors/1_follow_waypoints/spread/do_a_spread
tag @s[tag=botIgnoreSpread] remove botIgnoreSpread
function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates

#target waypoint isn't loaded?
#race: respawn, possibly get advanced forward a checkpoint if it's been a while
execute if score #foundNode value matches 0 if score #vGameType value matches 1 run return run function phan:bots/race/respawn_consider_advancing
#battle: panic and go into "wander" mode for a few seconds
execute if score #foundNode value matches 0 if score #vGameType value matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary
#=====

#get boost (because vanilla explosion unreliable...)
function phan:bots/behaviors/1_follow_waypoints/handle_explosion_boost_give_velocity