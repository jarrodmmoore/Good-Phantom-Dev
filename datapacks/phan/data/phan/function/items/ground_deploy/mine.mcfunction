#summon mine (item_display) which rides an armor stand
execute if score #brightMines value matches 0 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["tickObject","mineItemEntity","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","enemyHasVehicle","enemySpecialCode","enemyMine","sonicBlastDestroys","mineCount"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111141}}}]}
execute if score #brightMines value matches 1 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["tickObject","mineItemEntity","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","enemyHasVehicle","enemySpecialCode","enemyMine","sonicBlastDestroys","mineCount"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111149}}}]}
scoreboard players set @e[tag=setMe] enemyMaxHP 510
scoreboard players set @e[tag=setMe] enemyHP 510

#visuals and sound
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.5
particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10

#passengers are temporary and the item_display keeps them alive as long as they're being used
scoreboard players set @e[tag=setLife] lifespan 10

#get ID and validity stuff
scoreboard players operation @e[tag=setMe] playerID = @s playerID
scoreboard players set @e[tag=setMe] itemValidSpawn 1

#armor_stand gets same rotation as whatever spawned it. also gets data for stuff
execute as @e[tag=setLife] positioned ~ ~.5 ~ run tp @s ~ ~ ~ ~ ~

#join team for glowing color
team join colorRed @e[tag=setMe]

#clean up tag
tag @e[tag=setMe] remove setMe
tag @e[tag=setLife] remove setLife