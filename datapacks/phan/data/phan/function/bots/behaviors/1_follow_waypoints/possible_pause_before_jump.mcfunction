#hard or higher skill bots will never hesitate
execute if score @s botSkill matches 4.. run return 0

#chance of pausing
execute if score @s botSkill matches 3 store result score #random value run random value 1..5
execute if score @s botSkill matches 2 store result score #random value run random value 1..4
execute if score @s botSkill matches ..1 store result score #random value run random value 1..3
#rolling 2 or higher means no pause
execute if score #random value matches 2.. run return 0

#pause for a random amount of time
execute if score @s botSkill matches 3 store result score @s botPauseTime run random value 3..8
execute if score @s botSkill matches 2 store result score @s botPauseTime run random value 4..12
execute if score @s botSkill matches ..1 store result score @s botPauseTime run random value 5..16