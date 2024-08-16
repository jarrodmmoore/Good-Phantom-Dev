#13/X -- keep going last direction
#3/X -- go adjacent direction
#3/X -- go other adjacent direction
#1/X -- go polar opposite direction

#if score #botChoseAltRoute value matches 0

#determine which directions lead to waypoints that are good for flight
scoreboard players set #wpRestrictDirections value 0
scoreboard players set #wpAllowDir1 value 0
scoreboard players set #wpAllowDir2 value 0
scoreboard players set #wpAllowDir3 value 0
scoreboard players set #wpAllowDir4 value 0
scoreboard players set #wpAllowDir5 value 0
execute if score #waypointDir1 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_flight_dir1
execute if score #waypointDir2 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_flight_dir2
execute if score #waypointDir3 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_flight_dir3
execute if score #waypointDir4 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_flight_dir4
execute if score #botChoseAltRoute value matches 1 run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_flight_dir5

#if we want to go an alternate route but the alternate route sucks for flying, ignore it
#(reminder: setting #botChoseAltRoute value to 2 will skip this check and make the bot fly the route no matter what)
execute if score #botChoseAltRoute value matches 1 if score #wpRestrictDirections value matches 1.. if score #wpAllowDir5 value matches 0 run scoreboard players set #botChoseAltRoute value 0
#kept the alternate route? exit now
execute if score #botChoseAltRoute value matches 1.. run return 0

#figure out which direction to go
execute in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] remove directionViable
execute unless score @s botLastDirection matches 1..4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/neutral
execute if score @s botLastDirection matches 1 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/a
execute if score @s botLastDirection matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/b
execute if score @s botLastDirection matches 3 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/c
execute if score @s botLastDirection matches 4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/d