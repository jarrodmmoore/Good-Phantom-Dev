#return 1 means we will ignore backtracking
execute store result score #random value run random value 1..4
execute if score @s botSkill matches ..1 if score #random value matches 1..3 run return 1
execute if score @s botSkill matches 2 if score #random value matches 1..2 run return 1
execute if score @s botSkill matches 3 if score #random value matches 1 run return 1

#ok, we can care about backtracking
return 0