#flamin' hot flavor stardusts
summon item ~ ~ ~ {Tags:["checkValid","stay","setMe","stardust","stardustRed","shootable","groupA","representBaddy"],Age:-32768,NoGravity:0b,Item:{id:"minecraft:yellow_wool",count:2,components:{"minecraft:custom_name":'{"translate":"gp.game.stardust","color":"red","italic":false}',"minecraft:custom_model_data":1111113,"minecraft:hide_additional_tooltip":{}}}}
#Q: red stardust? why?
#A: red stardust is spawned in the place of enemies when enemies are disabled via Assist Mode.
#behaves the same as normal stardust, but is visually distinct so players will know where to expect enemies to spawn if they take off the training wheels and re-enable enemies.

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 2
execute if entity @s[tag=spawner] run particle instant_effect ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data


#clean up tag
tag @e[tag=setMe] remove setMe

#join team for glowing color
team join colorRed @e[tag=setMe]

#we've done our job. now we die
tag @s remove spawner
scoreboard players set @s lifespan 1