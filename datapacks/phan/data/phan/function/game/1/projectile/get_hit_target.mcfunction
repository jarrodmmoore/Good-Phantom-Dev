execute if block ~ ~ ~ target run setblock ~ ~ ~ melon
playsound minecraft:block.crop.break master @a ~ ~ ~ 2.4 1.3
scoreboard players set @s editArg1 1
tag @s remove shootable