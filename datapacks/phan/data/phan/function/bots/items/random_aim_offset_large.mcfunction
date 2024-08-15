scoreboard players set #random2 value 0
execute if score @s botSkill matches ..1 run execute store result score #random2 value run random value -40..40
execute if score @s botSkill matches 2 run execute store result score #random2 value run random value -20..20
execute if score @s botSkill matches 3 run execute store result score #random2 value run random value -10..10
execute if score @s botSkill matches 4 run execute store result score #random2 value run random value -5..5
execute store result storage phan:coords coord_yaw int 1 run scoreboard players get #random2 value

scoreboard players set #random2 value 0
execute if score @s botSkill matches ..1 run execute store result score #random2 value run random value -40..40
execute if score @s botSkill matches 2 run execute store result score #random2 value run random value -20..20
execute if score @s botSkill matches 3 run execute store result score #random2 value run random value -10..10
execute if score @s botSkill matches 4 run execute store result score #random2 value run random value -5..5
execute store result storage phan:coords coord_pitch int 1 run scoreboard players get #random2 value