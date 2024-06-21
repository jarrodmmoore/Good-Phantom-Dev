scoreboard players remove #randomClusterID value 1
execute if score #randomClusterID value matches 0.. run scoreboard players set #randomClusterID value -1
scoreboard players operation @s editArg1 = #randomClusterID value