#put us in our place
tp @s ~ ~ ~ ~ ~

#identifiers
scoreboard players operation @s playerID = #setID value
scoreboard players operation @s botInstance = #editArg1 value
scoreboard players operation @s botID = #editArg2 value
#(yes, bots have 3 different identifier scores. what of it?)

#go to the proper start grid location
scoreboard players operation @s startGrid = #editPitch value

#apply skill level
scoreboard players operation @s botSkill = #editArg3 value
#put the proper head on our head depending on skill
execute unless score @s botSkill matches 2..6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111115]
execute if score @s botSkill matches 2 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111116]
execute if score @s botSkill matches 3 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111117]
execute if score @s botSkill matches 4 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111118]
execute if score @s botSkill matches 5 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111119]
execute if score @s botSkill matches 6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111120]

#give us a random spread bias
execute store result score @s botBiasX run random value 0..10
execute store result score @s botBiasZ run random value 0..10

#i hope this doesn't f*** with our bot difficulty tag color
team join player @s

#bot should only stay alive as long as we're running code on it
scoreboard players set @s lifespan 10

#set to behavior state 0 by default (which means do nothing until the game starts)
scoreboard players set @s botBehavior 0

#we need to target the nearest AI waypoint as soon as we start caring about that
tag @s add botTargetNearestWP

#done setup
tag @s remove setMe