#only 1 in 4 chance of running this. roll 2 or higher and you're kicked out.
execute store result score #random value run random value 1..4
execute if score #random value matches 2.. run return 0
#=====

#summon a target somewhere, with a somewhat randomly picked goal
execute store result score #random value run random value 1..8
#goals:
#1 = target leading player (assuming it's NOT us)
#2..6 = target an eye somewhere nearby
#7..8 = target the portal

#slight influence based on skill
execute if score @s botSkill matches ..2 if score #random value matches ..1 run scoreboard players add #random value 1
execute if score @s botSkill matches 4.. run scoreboard players remove #random value 1
#high level bots are likely to go towards portal if someone's going to finish soon
execute if entity @s[scores={botSkill=4..,racePosDisplay=1}] if score #random value matches ..1 run scoreboard players add #random value 1
execute if score @s botSkill matches 4 if entity @e[tag=playing,tag=vsHomeStretch] run scoreboard players add #random value 3
execute if score @s botSkill matches 5.. if entity @e[tag=playing,tag=vsHomeStretch] run scoreboard players add #random value 4

#summon target (0001e453-0000-0000-0000-000000000008)
tag @s add self_l
execute if score #random value matches 1 as @e[limit=1,tag=playing,tag=!self_l,scores={racePosDisplay=1},distance=..100] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;123987,0,0,8]}
execute if score #random value matches 2..3 as @e[limit=1,type=item_display,sort=nearest,tag=enderEye,distance=..100] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;123987,0,0,8]}
execute if score #random value matches 4..6 as @e[limit=1,type=item_display,sort=random,tag=enderEye,distance=..100] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;123987,0,0,8]}
execute if score #random value matches 7.. as @e[limit=1,type=marker,tag=portalCore,scores={versusSpawn=1},distance=..100] at @s if loaded ~ ~ ~ run summon marker ~ ~ ~ {UUID:[I;123987,0,0,8]}
tag @s remove self_l

#exit out if no target
execute unless entity 0001e453-0000-0000-0000-000000000008 run return 0
#=====

#find all possible destination waypoints
execute if score #waypointDir1 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_direction_1
execute if score #waypointDir2 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_direction_2
execute if score #waypointDir3 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_direction_3
execute if score #waypointDir4 value matches 1.. run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_think_direction_4

#pick the nearest waypoint to our goal and set our preferred direction based on that
scoreboard players set #test value 0
scoreboard players set #targetExists value 0
execute at 0001e453-0000-0000-0000-000000000008 as @e[type=marker,tag=wpPossibleDir,distance=..100,sort=nearest] run function phan:bots/behaviors/1_follow_waypoints/pick_direction/battle_acknowledge_direction
execute if score #test value matches 1.. run scoreboard players operation @s botLastDirection = #test value

#clean up target
kill 0001e453-0000-0000-0000-000000000008