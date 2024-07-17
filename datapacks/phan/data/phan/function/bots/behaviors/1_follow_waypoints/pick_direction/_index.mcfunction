#13/X -- keep going last direction
#3/X -- go adjactent direction
#3/X -- go other adjactent direction
#1/X -- go polar opposite direction

#figure out which direction to go
tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] remove directionViable
execute unless score @s botLastDirection matches 1..4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/neutral
execute if score @s botLastDirection matches 1 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/a
execute if score @s botLastDirection matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/b
execute if score @s botLastDirection matches 3 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/c
execute if score @s botLastDirection matches 4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/d