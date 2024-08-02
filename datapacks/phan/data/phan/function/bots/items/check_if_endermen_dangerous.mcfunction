scoreboard players operation #checkID value = @s playerID
execute in overworld as @e[type=marker,tag=endermanIsDangerous,x=198,y=-6,z=118,distance=..1] unless score @s playerID = #checkID value run scoreboard players set #botFearsEnderman value 1

#small chance of ignoring the enderman and just going at it anyway
scoreboard players set #random2 value 0
execute if score @s botSkill matches 2 store result score #random2 value run random value 1..4
execute if score @s botSkill matches 3 store result score #random2 value run random value 1..20
execute if score @s botSkill matches 4 store result score #random2 value run random value 1..100
execute if score @s botSkill matches 5 store result score #random2 value run random value 1..300
execute if score #random2 value matches 1 run scoreboard players set #botFearsEnderman value 0