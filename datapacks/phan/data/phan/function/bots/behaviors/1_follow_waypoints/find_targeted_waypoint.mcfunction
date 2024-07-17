scoreboard players set #foundNode value 0

#first, try with small radius
$execute as @e[type=marker,tag=AIBC,scores={AIBC_id=$(id)},distance=..15,limit=1,sort=nearest] at @s run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#nothing found? try with bigger radius
execute if score #foundNode value matches 0 run function phan:bots/behaviors/1_follow_waypoints/find_targeted_waypoint_far with storage phan:bot_args

#target waypoint isn't loaded? panic and go into "wander" mode for a few seconds
execute if score #foundNode value matches 0 run return run function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary

#set target coords and let's get on our way
function phan:bots/behaviors/1_follow_waypoints/spread/do_a_spread
function phan:bots/behaviors/1_follow_waypoints/spread/set_target_coordinates