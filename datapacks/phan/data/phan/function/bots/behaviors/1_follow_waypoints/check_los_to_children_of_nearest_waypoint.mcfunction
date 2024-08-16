data modify storage phan:bot_args max_distance set value 20

#check los to each direction
execute if score #wpDir1 value matches 1.. store result storage phan:bot_args id int 1 run scoreboard players get #wpDir1 value
function phan:bots/behaviors/1_follow_waypoints/check_los_to_node_macro with storage phan:bot_args

execute if score #wpDir2 value matches 1.. store result storage phan:bot_args id int 1 run scoreboard players get #wpDir2 value
function phan:bots/behaviors/1_follow_waypoints/check_los_to_node_macro with storage phan:bot_args

execute if score #wpDir3 value matches 1.. store result storage phan:bot_args id int 1 run scoreboard players get #wpDir3 value
function phan:bots/behaviors/1_follow_waypoints/check_los_to_node_macro with storage phan:bot_args

execute if score #wpDir4 value matches 1.. store result storage phan:bot_args id int 1 run scoreboard players get #wpDir4 value
function phan:bots/behaviors/1_follow_waypoints/check_los_to_node_macro with storage phan:bot_args

#target one of the nodes that is a possible reroute
execute as @e[type=marker,limit=1,sort=random,tag=validReroute,distance=..20] run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target
execute if score #foundNode value matches 1.. run scoreboard players set @s botHookBase 0
execute if score #foundNode value matches 1.. run tag @s add botIgnoreSpread

#clean up tags
tag @e[type=marker,tag=validReroute,distance=..20] remove validReroute