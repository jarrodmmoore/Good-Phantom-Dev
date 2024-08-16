scoreboard players remove #uniqueEyeID value 1
execute if score #uniqueEyeID value matches 0.. run scoreboard players set #uniqueEyeID value -1
scoreboard players operation @s eyeSpawnerID = #uniqueEyeID value