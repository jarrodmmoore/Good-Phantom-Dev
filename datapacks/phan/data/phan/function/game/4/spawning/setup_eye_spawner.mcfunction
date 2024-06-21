#node will spawn and re-spawn eyes independently of everything else

#track unique ID
scoreboard players add #eyeSpawnerID value 1
scoreboard players operation @s eyeSpawnerID = #eyeSpawnerID value

#using editArg3 to track spawn state
scoreboard players set @s editArg3 10000000