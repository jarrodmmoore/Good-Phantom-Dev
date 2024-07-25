#lower skill level bots have a chance of not reacting at all
scoreboard players set #random value 0
execute if score @s botSkill matches ..2 store result score #random value run random value 1..2
execute if score @s botSkill matches 3 store result score #random value run random value 1..3
execute if score #random value matches 1 run return run tag @e[type=item_display,tag=potentialTempTarget,distance=..10] remove potentialTempTarget

#didn't get denied? find a target
execute as @e[type=item_display,tag=potentialTempTarget,distance=..10,sort=nearest] run function phan:bots/reaction/set_temporary_target