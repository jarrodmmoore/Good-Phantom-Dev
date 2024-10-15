#harngh
execute if score #assist_enemies value matches 0 run summon vindicator ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","hurtful","enemySpecialCode","enemyVindicator","tntCanHit","representBaddy"],Health:520.0f,PersistenceRequired:1b,attributes:[{id:"max_health",base:520},{id:"movement_speed",base:0.1d}]}
execute if score #assist_enemies value matches 1 run summon vindicator ~ ~ ~ {Tags:["checkValid","setMe","baddy","groupB","shootable","hurtful","enemySpecialCode","enemyVindicator","tntCanHit","representBaddy"],Health:510.0f,PersistenceRequired:1b,attributes:[{id:"max_health",base:520},{id:"movement_speed",base:0.1d}]}
scoreboard players set @e[tag=setMe,type=vindicator,distance=..2] enemyMaxHP 520
#vindicator moves fast and predicts where the player is going to move.
#the purpose of this enemy is to punish players who try to avoid combat.
#the hope is to encourage players to fight enemies more, since killing this mob is always more desirable that tanking a hit from it, even if the player doesn't care about score or time

#if we were spawned by a spawner, do some fancy stuff
execute if entity @s[tag=spawner] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.8 1.3
execute if entity @s[tag=spawner] run particle large_smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 10
execute if entity @s[tag=spawner] run function phan:game/1/spawning/spawn__give_generic_data_from_spawner

#spawned by a node instead of a spawner? get generic data
execute if entity @s[tag=!spawner] run function phan:game/1/spawning/spawn__give_generic_data

#comment this line out if you want HP to show up before any damage is taken
#execute as @e[tag=setMe,type=vindicator,distance=..2] store result score @s dEnemyHP run data get entity @s Health

#entity gets same rotation as whatever spawned it
execute as @e[tag=setMe,type=vindicator,distance=..2] run tp @s ~ ~ ~ ~ ~

#join team so iron golems don't attack us
team join colorRed @e[tag=setMe,type=vindicator,distance=..2]

#clean up tag
tag @e[tag=setMe,type=vindicator,distance=..2] remove setMe