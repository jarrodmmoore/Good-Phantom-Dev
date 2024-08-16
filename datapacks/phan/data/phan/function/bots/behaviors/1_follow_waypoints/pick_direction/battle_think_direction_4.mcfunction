execute store result storage phan:bot_args id int 1 run scoreboard players get #waypointDir4 value
data modify storage phan:bot_args max_distance set value "4"
function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_direction_macro with storage phan:bot_args