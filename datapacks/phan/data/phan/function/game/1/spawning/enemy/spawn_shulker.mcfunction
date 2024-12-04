#i'm really feeling it
execute if score #assist_enemies value matches 0 run summon shulker ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","startHideHP","enemySpecialCode","enemyShulker","representBaddy"],NoAI:1b,Silent:1b,Color:14b,Passengers:[{id:"minecraft:item_display",Tags:["shulkerRingRed","setLife"],brightness:{block:10,sky:15},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/shulker_ring_red"}}},{id:"minecraft:item_display",Tags:["shulkerRingWhite","setLife"],brightness:{block:10,sky:15},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/shulker_ring_white"}}}]}
execute if score #assist_enemies value matches 1 run summon shulker ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","enemySpecialCode","enemyShulker","representBaddy"],NoAI:1b,Silent:1b,Color:14b,Passengers:[{id:"minecraft:item_display",Tags:["shulkerRingRed","setLife"],brightness:{block:10,sky:15},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/shulker_ring_red"}}},{id:"minecraft:item_display",Tags:["shulkerRingWhite","setLife"],brightness:{block:10,sky:15},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/enemy/shulker_ring_white"}}}]}
scoreboard players set @e[tag=setMe,type=shulker,distance=..2] enemyMaxHP 560
execute if score #assist_enemies value matches 0 run scoreboard players set @e[tag=setMe,type=shulker,distance=..2] enemyHP 560
execute if score #assist_enemies value matches 1 run scoreboard players set @e[tag=setMe,type=shulker,distance=..2] enemyHP 540
#note: you can add tag "startHideHP" to make HP not show until damage is taken

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.0
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#transfer over initial delay if we're a raw spawn
execute if entity @s[tag=!spawner] run scoreboard players operation @e[tag=setMe,type=shulker,distance=..2] editArg2 = @s editArg3
execute if entity @s[tag=!spawner] run scoreboard players operation @e[tag=setMe,type=shulker,distance=..2] editArg2 *= #2 value

#rings are temporary and will die without their owner
scoreboard players set @e[tag=setLife,type=item_display,distance=..2] lifespan 10
execute as @e[tag=setLife,type=item_display,distance=..2] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,-0.21f,0.0f],scale:[0.0f,0.0f,0.0f]}}

#join team for glowing color
team join colorRed @e[tag=setMe,type=shulker,distance=..2]

#clean up tag
tag @e[tag=setMe,type=shulker,distance=..2] remove setMe
tag @e[tag=setLife,type=item_display,distance=..2] remove setLife