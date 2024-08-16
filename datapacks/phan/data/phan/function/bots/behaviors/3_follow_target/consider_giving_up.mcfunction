execute store result score #random value run random value 2..80
scoreboard players operation #random value -= @s botSkill
execute if score #random value matches ..1 run scoreboard players set @s botTargetID 0