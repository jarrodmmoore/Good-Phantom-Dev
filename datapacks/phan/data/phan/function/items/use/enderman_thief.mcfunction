clear @s[type=player] cyan_dye[custom_data~{endermanThief:1b}] 1

#play sound
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 .5

#summon object at spawn that will manage our new enderman
execute in minecraft:overworld positioned 198 -6 118 run summon marker ~ ~ ~ {Tags:["tickObject","endermanController","setMe"]}
execute in minecraft:overworld run scoreboard players operation @e[tag=setMe,type=marker,x=198,y=-6,z=118,distance=..1] playerID = @s playerID
execute in minecraft:overworld run scoreboard players set @e[tag=setMe,type=marker,x=198,y=-6,z=118,distance=..1] lifespan 5
execute in minecraft:overworld run scoreboard players set @e[tag=setMe,type=marker,x=198,y=-6,z=118,distance=..1] itemValidSpawn 1
scoreboard players add #endermanUniqueID value 1
execute in minecraft:overworld run scoreboard players operation @e[tag=setMe,type=marker,x=198,y=-6,z=118,distance=..1] originalID = #endermanUniqueID value
execute in minecraft:overworld run tag @e[tag=setMe,type=marker,x=198,y=-6,z=118,distance=..1] remove setMe

#secretly clear item from bot inventories to curb spam
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[type=block_display,tag=botController,x=197,y=-11,z=117,dx=1,dy=1,dz=1,scores={botSkill=..5}] botHasItem16 0
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={botSkill=..5}] botHasItem16 0
execute if score #botsEnabled value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={botHoldingItem=16}] botHoldingItem 0

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10