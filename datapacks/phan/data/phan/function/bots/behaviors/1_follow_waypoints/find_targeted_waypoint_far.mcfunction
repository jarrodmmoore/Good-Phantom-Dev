#ok, try with big radius
$execute as @e[type=marker,tag=AIBC,scores={AIBC_id=$(id)},distance=..35,limit=1,sort=nearest] at @s run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target

#still nothing? go with gigantic radius
$execute if score #foundNode value matches 0 as @e[type=marker,tag=AIBC,scores={AIBC_id=$(id)},distance=..200,limit=1,sort=nearest] at @s run function phan:bots/behaviors/1_follow_waypoints/set_waypoint_target