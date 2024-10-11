#random delay on getting started (higher skill bots less likely to be delayed)
scoreboard players set #random value 1
execute if score @s botSkill matches ..1 store result score #random value run random value 1..16
execute if score @s botSkill matches 2 store result score #random value run random value 1..8
execute if score @s botSkill matches 3 store result score #random value run random value 1..4
execute if score @s botSkill matches 4 store result score #random value run random value 1..2
#better odds of starting if more than 10 seconds have passed since game start
execute if score #gameTime value matches 400.. run scoreboard players remove #random value 3
#need to roll a 1 to get started
execute if score #random value matches 2.. run return 0
#=====

#follow waypoints if there's one nearby
execute at @s if entity @e[type=marker,tag=AIBC,distance=..60] run return run scoreboard players set @s botBehavior 1

#no waypoint nearby? roam around randomly
execute if score #vGameType value matches 1.. if entity @s[tag=botHasSpawnpoint] run return run function phan:bots/race/respawn_consider_advancing
function phan:bots/behaviors/1_follow_waypoints/switch_to_wander_logic_temporary