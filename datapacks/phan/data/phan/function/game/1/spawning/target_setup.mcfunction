execute if block ~ ~ ~ melon run setblock ~ ~ ~ target
#we'll use editArg1 to track our slot state
scoreboard players set @s editArg1 0
#we can get shot
tag @s add shootable