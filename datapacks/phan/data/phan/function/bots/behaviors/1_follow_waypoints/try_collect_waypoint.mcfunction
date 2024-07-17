#track if we did it or not
scoreboard players set #success value 0

#record if our state
scoreboard players operation #OnGround value = @s onGround
scoreboard players operation #inWater value = @s inWater

#first try with small radius
$execute as @e[type=marker,tag=AIBC,scores={AIBC_id=$(id)},distance=..5,limit=1,sort=nearest] at @s run function phan:bots/behaviors/1_follow_waypoints/collect_waypoint

#second try with much bigger radius
$execute if score #success value matches 0 as @e[type=marker,tag=AIBC,scores={AIBC_id=$(id)},distance=..50,limit=1,sort=nearest] at @s run function phan:bots/behaviors/1_follow_waypoints/collect_waypoint

#adopt data if we found the waypoint and it didn't reject us
execute if score #success value matches 1 run function phan:bots/behaviors/1_follow_waypoints/adopt_new_waypoint_data