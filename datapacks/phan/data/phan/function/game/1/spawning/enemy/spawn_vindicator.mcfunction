#harngh
execute if score #assist_enemies value matches 0 run summon vindicator ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","hurtful","enemySpecialCode","enemyVindicator","tntCanHit","representBaddy"],Health:520.0f,PersistenceRequired:1b,attributes:[{id:"generic.max_health",base:520},{id:"generic.movement_speed",base:0.1d}]}
execute if score #assist_enemies value matches 1 run summon vindicator ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","hurtful","enemySpecialCode","enemyVindicator","tntCanHit","representBaddy"],Health:510.0f,PersistenceRequired:1b,attributes:[{id:"generic.max_health",base:520},{id:"generic.movement_speed",base:0.1d}]}
scoreboard players set @e[tag=setMe] enemyMaxHP 520

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.3
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#comment this line out if you want HP to show up before any damage is taken
#execute as @e[tag=setMe] store result score @s dEnemyHP run data get entity @s Health

#entity gets same rotation as whatever spawned it
execute as @e[tag=setMe] run tp @s ~ ~ ~ ~ ~

#join team so iron golems don't attack us
team join colorRed @e[tag=setMe]

#clean up tag
tag @e[tag=setMe] remove setMe