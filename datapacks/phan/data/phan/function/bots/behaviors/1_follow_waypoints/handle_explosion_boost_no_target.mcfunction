#find target
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botTargetWaypoint
function phan:bots/behaviors/1_follow_waypoints/event/summon_target_at_waypoint_macro with storage phan:bot_args

#this is dumb. everyone point and laugh at me
execute at 00000309-0000-0000-0000-00000000000a run summon marker ~ ~ ~ {UUID:[I;777,0,0,15]}
kill 00000309-0000-0000-0000-00000000000a

#get boost (because vanilla explosion unreliable...)
tag @s remove botImprovFlight
function phan:bots/behaviors/1_follow_waypoints/handle_explosion_boost_give_velocity