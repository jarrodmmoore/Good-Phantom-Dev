#13/X -- keep going last direction
#3/X -- go adjacent direction
#3/X -- go other adjacent direction
#1/X -- go polar opposite direction

#if we're a tryhard+ bot and haven't already checked routes for traps, try to restrict paths that have traps sitting on them
execute unless score #botCheckTrapsAltRoute value matches 1 if score @s botSkill matches 5.. unless score @s racePosDisplay < #botRivalPosition value if entity @e[type=item_display,tag=enemyMine,distance=..20] run function phan:bots/behaviors/1_follow_waypoints/pick_direction/check_for_traps

#nothing viable until we say otherwise
execute in overworld run tag @e[tag=randomize,x=-1,y=-64,z=-1,dx=1,dy=1,dz=1,type=armor_stand,scores={r=1..20}] remove directionViable

#battle mode: there's a chance we'll favor directions that get us closer to what we want
execute if score #vGameType value matches 2 run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_about_directions

#figure out which direction to go
execute unless score @s botLastDirection matches 1..4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/neutral
execute if score @s botLastDirection matches 1 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/a
execute if score @s botLastDirection matches 2 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/b
execute if score @s botLastDirection matches 3 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/c
execute if score @s botLastDirection matches 4 run return run function phan:bots/behaviors/1_follow_waypoints/pick_direction/d