clear @s[type=player] cyan_dye[custom_data~{homingRocket:1b}] 1

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 2.5 0.85
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2.5 0.75
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2.5 0.6

#spawn rocket (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["tickObject","rocket","homing","giveID"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:cyan_dye",count:1b,components:{"custom_model_data":1111112}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,tag=giveID,distance=..4] run tp @s ~ ~ ~ ~ ~

#entity can only exist in this current game session
scoreboard players set @e[tag=giveID,type=armor_stand,distance=..4] itemValidSpawn 1

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID,type=armor_stand,distance=..4] playerID = @s playerID
scoreboard players operation @e[limit=1,tag=giveID,type=armor_stand,distance=..4] originalID = @s playerID
team join colorRed @e[limit=1,tag=setLife,type=item_display,distance=..4]
scoreboard players set @e[tag=setLife,type=item_display,distance=..4] lifespan 3
tag @e[limit=1,tag=giveID,type=armor_stand,distance=..4] remove giveID
tag @e[tag=setLife,type=item_display,distance=..4] remove setLife

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 7