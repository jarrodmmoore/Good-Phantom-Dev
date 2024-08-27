#summon item_display (which is a tnt golem)
#(a custom mob without a ton of separate parts riding each other--thank you jesus)
summon item_display ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","tntCanHit","artificialHP","needsDisplayHP","tallDisplayHP","enemySpecialCode","enemyTNTGolem","bigLootDrop","representBaddy"],brightness:{block:10,sky:15},item_display:"head",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,1.65f,0.0f],scale:[0.58f,0.58f,0.58f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111134}}}
#Q: wouldn't it be easier to make this an armor stand? it has the perfect proportions and would interpolate its own rotation
#A: yes, but changes to the armor stand head slot don't always render when we need it to. so item_display wins out, here.
scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyMaxHP 540
execute if score #assist_enemies value matches 0 run scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyHP 540
execute if score #assist_enemies value matches 1 run scoreboard players set @e[tag=setMe,type=item_display,distance=..2] enemyHP 520
#note: you can add tag "startHideHP" to make HP not show until damage is taken

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.1
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#entity gets same rotation as whatever spawned it
execute as @e[tag=setMe,type=item_display,distance=..2] run tp @s ~ ~ ~ ~ ~

#join team for glowing color
team join colorRed @e[tag=setMe,type=item_display,distance=..2]

#clean up tag
tag @e[tag=setMe,type=item_display,distance=..2] remove setMe