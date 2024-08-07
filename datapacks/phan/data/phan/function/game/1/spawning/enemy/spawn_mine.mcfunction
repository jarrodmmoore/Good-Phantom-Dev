#summon mine (item_display) which rides an armor stand
execute if score #brightMines value matches 0 if score #assist_enemies value matches 0 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","startHideHP","enemyHasVehicle","enemySpecialCode","enemyMine"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111141}}}]}
execute if score #brightMines value matches 0 if score #assist_enemies value matches 1 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemyHasVehicle","enemySpecialCode","enemyMine"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111141}}}]}
execute if score #brightMines value matches 1 if score #assist_enemies value matches 0 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","startHideHP","enemyHasVehicle","enemySpecialCode","enemyMine"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111149}}}]}
execute if score #brightMines value matches 1 if score #assist_enemies value matches 1 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemyHasVehicle","enemySpecialCode","enemyMine"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111149}}}]}
scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyMaxHP 510
scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyHP 510
#note: you can add tag "startHideHP" to make HP not show until damage is taken

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.5
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#passengers are temporary and the item_display keeps them alive as long as they're being used
scoreboard players set @e[tag=setLife,type=armor_stand,distance=..2] lifespan 10

#armor_stand gets same rotation as whatever spawned it. also gets data for stuff
execute as @e[tag=setLife,type=armor_stand,distance=..2] positioned ~ ~.5 ~ run tp @s ~ ~ ~ ~ ~

#join team for glowing color
team join colorRed @e[tag=setMe,type=item_display,distance=..2]

#clean up tag
tag @e[tag=setMe,type=item_display,distance=..2] remove setMe
tag @e[tag=setLife,type=armor_stand,distance=..2] remove setLife