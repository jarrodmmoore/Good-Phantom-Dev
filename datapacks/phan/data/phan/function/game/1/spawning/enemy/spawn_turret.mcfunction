#summon evil dispenser (item_display) which rides another block_display
execute if score #assist_enemies value matches 0 run summon block_display ~ ~1.5 ~ {Tags:["setLife","turretBase"],teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,-1.5f,-0.5f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:nether_brick_fence",Properties:{north:"false",south:"false",east:"false",west:"false"}},Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemySpecialCode","enemyTurret","representBaddy"],item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/nightmare_dispenser"}}}]}
execute if score #assist_enemies value matches 1 run summon block_display ~ ~1.5 ~ {Tags:["setLife","turretBase"],teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,-1.5f,-0.5f],scale:[1.0f,1.0f,1.0f]},block_state:{Name:"minecraft:nether_brick_fence",Properties:{north:"false",south:"false",east:"false",west:"false"}},Passengers:[{id:"minecraft:item_display",brightness:{sky:10,block:15},Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemySpecialCode","enemyTurret","representBaddy"],item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/nightmare_dispenser"}}}]}
scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyMaxHP 540
execute if score #assist_enemies value matches 0 run scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyHP 540
execute if score #assist_enemies value matches 1 run scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyHP 530
#note: you can add tag "startHideHP" to make HP not show until damage is taken

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.1
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#extra bits are temporary and the item_display keeps them alive as long as they're being used
scoreboard players set @e[tag=setLife,type=block_display,distance=..2] lifespan 10

#join team for glowing color
team join colorRed @e[tag=setMe,type=item_display,distance=..2]

#clean up tag
tag @e[tag=setMe,type=item_display,distance=..2] remove setMe
tag @e[tag=setLife,type=block_display,distance=..2] remove setLife