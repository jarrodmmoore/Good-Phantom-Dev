execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointDir1 value
data modify storage phan:bot_args max_distance set value "1"
function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_for_traps_waypoint with storage phan:bot_args