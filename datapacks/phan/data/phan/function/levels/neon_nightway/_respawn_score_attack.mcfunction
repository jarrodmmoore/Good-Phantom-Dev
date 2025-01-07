#special respawn case in act 2
execute if score @s pCurrentArea matches 2 unless block ~ 59 ~ lime_concrete if score @s currentLoad matches 4 run tp @s 3221 78 97 270 0
execute if score @s pCurrentArea matches 2 if block ~ 59 ~ lime_concrete if score @s currentLoad matches 4 run tp @s 3337 73 39 270 0