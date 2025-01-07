#act 3 has some special sauce

scoreboard players set #altRespawn value 0
execute at @s if block ~ -60 ~ yellow_wool run scoreboard players set #altRespawn value 1

execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 1 if score #altRespawn value matches 1 run tp @s 4235 11 -36 180 0
execute if score @s pCurrentArea matches 3 if score @s currentLoad matches 1 if score #altRespawn value matches 0 run tp @s 4233 34 -147 270 0