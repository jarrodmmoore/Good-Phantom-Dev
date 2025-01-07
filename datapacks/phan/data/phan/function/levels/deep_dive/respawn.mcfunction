#old, de-referenced function

#scoreboard players set #altRespawn value 0
#execute at @s if block ~ -60 ~ yellow_wool run scoreboard players set #altRespawn value 1

#old hard-coded
#go home?
#execute if score @s pCurrentArea matches 1 if score @s currentLoad matches ..1 run tp @s 3999 287 99 180 0
#execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 2 run tp @s 3999 279 -19 180 0
#execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 3 run tp @s 4060 197 0 90 0
#execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 4 run tp @s 3999 287 99 180 0
#execute if score @s pCurrentArea matches 1 if score @s currentLoad matches 5.. run tp @s 3999 287 99 180 0

#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches ..0 run tp @s 4050 -14 0 270 0
#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 1 run tp @s 4140 10 27 0 0
#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 2 run tp @s 4050 -14 0 270 0
#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 3 run tp @s 4161 5 69 285 0
#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 4 run tp @s 4274 2 3 160 0
#execute if score @s pCurrentArea matches 2 if score @s currentLoad matches 5.. run tp @s 4250 10 -3 90 0

#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches ..0 run tp @s 4235 11 -36 180 0
#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 1 if score #altRespawn value matches 1 run tp @s 4235 11 -36 180 0
#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 1 if score #altRespawn value matches 0 run tp @s 4233 34 -147 270 0
#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 2 run tp @s 4370 56 -129 270 0
#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 3 run tp @s 4305 51 -182 0 0
#execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 4.. run tp @s 4345 53 -97 90 0