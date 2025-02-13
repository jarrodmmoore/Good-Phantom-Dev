clear @s[type=player] red_wool[custom_data~{mineItem:1b}] 1
scoreboard players operation #attackerID value = @s playerID

#summon mine (item_display) which rides an armor stand
execute if score #brightMines value matches 0 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["tickObject","mineItemEntity","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","enemyHasVehicle","enemySpecialCode","enemyMine","sonicBlastDestroys","mineCount","botObjectOfInterest","botRecognizesTrap"],item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/mine_black"}}}]}
execute if score #brightMines value matches 1 run summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["tickObject","mineItemEntity","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","enemyHasVehicle","enemySpecialCode","enemyMine","sonicBlastDestroys","mineCount","botObjectOfInterest","botRecognizesTrap"],item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/mine_tech"}}}]}
scoreboard players set @e[tag=setMe,type=item_display,distance=..4] enemyMaxHP 510
scoreboard players set @e[tag=setMe,type=item_display,distance=..4] enemyHP 510

#visuals and sound
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.5
particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10

#passengers are temporary and the item_display keeps them alive as long as they're being used
scoreboard players set @e[tag=setLife,type=armor_stand,distance=..4] lifespan 10

#mark mine as human-owned
execute if entity @s[type=player] run tag @e[tag=setMe,type=item_display,distance=..4] add humanOwned

#get ID and validity stuff
scoreboard players operation @e[tag=setMe,type=item_display,distance=..4] playerID = @s playerID
scoreboard players set @e[tag=setMe,type=item_display,distance=..4] itemValidSpawn 1

#get a unique ID (for bot temporary target system)
scoreboard players add #uniqieBoxID value 1
execute if score #uniqieBoxID value matches 0 run scoreboard players add #uniqieBoxID value 1
scoreboard players operation @e[tag=setMe,type=item_display,distance=..4] ringID = #uniqieBoxID value

#armor_stand gets same rotation as whatever spawned it. also gets data for stuff
execute as @e[tag=setLife,type=armor_stand,distance=..4] positioned ~ ~.5 ~ run tp @s ~ ~ ~ ~ 0

#join team for glowing color
team join colorRed @e[tag=setMe,type=item_display,distance=..4]

#clean up tag
tag @e[tag=setMe,type=item_display,distance=..4] remove setMe
tag @e[tag=setLife,type=armor_stand,distance=..4] remove setLife

#cooldown
scoreboard players reset @s carrotInput
scoreboard players set @s inputCooldown 10