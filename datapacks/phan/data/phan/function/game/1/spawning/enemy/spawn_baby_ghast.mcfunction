#AND THE AWARD FOR MOST TAGS IN A /SUMMON COMMAND GOES TO:
#(drumroll)

#summon baby ghast (item_display) which rides an armor stand and has an extra item display glued to it for the legs
summon armor_stand ~ ~.5 ~ {Tags:["setLife"],Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemyHasVehicle","enemySpecialCode","enemyGhast","representBaddy"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111136}},Passengers:[{id:"item_display",brightness:{sky:10,block:15},Tags:["setLife2","babyGhastLegs"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111138}}}]}]}
scoreboard players set @e[tag=setMe] enemyMaxHP 510
scoreboard players set @e[tag=setMe] enemyHP 510
#note: you can add tag "startHideHP" to make HP not show until damage is taken

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.5
execute if entity @s[tag=spawner] run particle large_smoke ~ ~ ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~ ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#passengers are temporary and the item_display keeps them alive as long as they're being used
scoreboard players set @e[tag=setLife] lifespan 10
scoreboard players set @e[tag=setLife2] lifespan 10

#join team for glowing color
team join colorRed @e[tag=setMe]

#some minor animation randomization on the legs...
scoreboard players operation @e[tag=setLife2] editArg2 = @e[limit=1,tag=randomize,sort=random,type=armor_stand,scores={r=1..2}] r

#armor_stand gets same rotation as whatever spawned it. also gets data for stuff
execute as @e[tag=setLife] positioned ~ ~.5 ~ run tp @s ~ ~ ~ ~ ~

#clean up tag
tag @e[tag=setMe] remove setMe
tag @e[tag=setLife] remove setLife
tag @e[tag=setLife2] remove setLife2