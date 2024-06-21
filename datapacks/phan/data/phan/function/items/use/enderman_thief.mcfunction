clear @s cyan_dye[custom_data~{endermanThief:1b}] 1

#play sound
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 .5

#summon object at spawn that will manage our new enderman
execute in minecraft:overworld positioned 198 -6 118 run summon marker ~ ~ ~ {Tags:["tickObject","endermanController","setMe"]}
scoreboard players operation @e[tag=setMe] playerID = @s playerID
scoreboard players set @e[tag=setMe] lifespan 5
scoreboard players set @e[tag=setMe] itemValidSpawn 1
scoreboard players add #endermanUniqueID value 1
scoreboard players operation @e[tag=setMe] originalID = #endermanUniqueID value
tag @e[tag=setMe] remove setMe

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10