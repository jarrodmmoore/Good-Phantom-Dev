clear @s cyan_dye[custom_data~{redRocket:1b}] 1

playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 2.5 0.85
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 2.5 0.85

#spawn rocket (item_display riding an armor stand)
summon armor_stand ~ ~1 ~ {Tags:["tickObject","rocket","giveID"],Marker:1b,Invisible:1b,Invulnerable:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["setLife"],item_display:"head",item:{id:"minecraft:cyan_dye",count:1b,components:{"custom_model_data":1111111}}}]}
execute at @s positioned ~ ~1.6 ~ as @e[type=armor_stand,tag=giveID] run tp @s ~ ~ ~ ~ ~-1.5

#entity can only exist in this current game session
scoreboard players set @e[tag=giveID] itemValidSpawn 1

#we did this. it was us.
scoreboard players operation @e[limit=1,tag=giveID] playerID = @s playerID
scoreboard players operation @e[limit=1,tag=giveID] originalID = @s playerID
team join colorRed @e[limit=1,tag=setLife]
scoreboard players set @e[tag=setLife] lifespan 3
tag @e[limit=1,tag=giveID] remove giveID
tag @e[tag=setLife] remove setLife

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 7