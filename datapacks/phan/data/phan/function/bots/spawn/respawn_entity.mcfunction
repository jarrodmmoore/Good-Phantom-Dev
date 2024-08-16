#executed by a botController entity
#this should be run at the location you want a bot to spawn at

#new instance
scoreboard players add @s botInstance 1

#summon the zombie
$summon zombie ~ ~-100 ~ {Tags:["ai","setMe","playing","formerlyAI","tntCanHit"],CustomNameVisible:true,CustomName:'["",{"text":"\\uE$(colortag) ","color":"white"},{"text":"$(username)","color":"aqua"}]',Silent:true,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,ArmorDropChances:[0.85f,0.85f,0.85f,0.0f],ArmorItems:[{},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16777215}},{id:"minecraft:elytra",count:1,components:{"minecraft:unbreakable":{}}},{}],ArmorDropChances:[0.085F,0.085F,0.000F,0.085F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}],attributes:[{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.jump_strength",base:0},{id:"minecraft:generic.step_height",base:1.1},{id:"minecraft:generic.max_health",base:1020},{id:"minecraft:generic.movement_speed",base:0.0},{id:"minecraft:generic.follow_range",base:0},{id:"minecraft:generic.safe_fall_distance",base:1020},{id:"minecraft:generic.oxygen_bonus",base:1020},{id:"minecraft:generic.water_movement_efficiency",base:1},{id:"minecraft:zombie.spawn_reinforcements",base:0}]}
#^ if we ever want other bot entity types like in Sprint Racer, this would be the place to put an index for that
#...although that seems unlikely for this project since i'm gonna try to optimize as many @e's as possible with type=zombie

#kill any drowned that might be lingering in the world
kill @e[type=drowned,tag=!stay]

#should bot be rival?
execute if entity @s[tag=botRival] run scoreboard players set #setBotAsRival value 1

#if we respawned the bot at the location of a marker, quickly record coordinates and send back to botController
execute if entity @s[tag=botNeedMarkerToRespawn] as @e[tag=setMe,type=zombie] at @s run function phan:bots/spawn/respawn_entity_post_summon_coordinates
execute if entity @s[tag=botNeedMarkerToRespawn] run function phan:bots/spawn/update_coordinates

#important post-summon stuff on zombie
scoreboard players operation #setID value = @s playerID
scoreboard players operation #editArg1 value = @s botInstance
scoreboard players operation #editArg2 value = @s botID
scoreboard players operation #editArg3 value = @s botSkill
scoreboard players operation #editPitch value = @s startGrid
execute as @e[tag=setMe,type=zombie] run function phan:bots/spawn/respawn_entity_post_summon
#(setMe tag removed during function)

#send data to bot
execute store result score #test1 dataTransfer run execute if score @s vsRespawnLaunch matches 1..
function phan:bots/controller/send_data_to_bot

#we did it!
scoreboard players set #botSpawnSuccess value 1