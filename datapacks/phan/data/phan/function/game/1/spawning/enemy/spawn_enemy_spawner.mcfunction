#spawn an area effect cloud that will transform into an enemy when a player gets near it

#editArg2 is what we are
execute unless score @s editArg2 matches 2.. run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnZombie"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 2 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnZombieKnight"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 3 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnSkeleton"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 4 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnVindicator"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 5 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnBabyGhast"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 6 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnGuardian"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 7 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnTurret"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 8 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnIronGolem"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 9 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnTNTGolem"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 10 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnShulker"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 11 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnVex"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}
execute if score @s editArg2 matches 12 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","spawnMine"],Particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:69420}

#different spawn radius depending on editArg1
execute if score @s editArg1 matches 0.. run tag @e[tag=setMe,type=area_effect_cloud,distance=..2] add largeRadius
execute if score @s editArg1 matches -1 run tag @e[tag=setMe,type=area_effect_cloud,distance=..2] add mediumRadius
execute if score @s editArg1 matches -2 run tag @e[tag=setMe,type=area_effect_cloud,distance=..2] add smallRadius
execute if score @s editArg1 matches -3 run tag @e[tag=setMe,type=area_effect_cloud,distance=..2] add tinyRadius
execute if score @s editArg1 matches ..-4 run tag @e[tag=setMe,type=area_effect_cloud,distance=..2] add massiveRadius

#setMe gets rotation of the node that spawned it
execute as @e[tag=setMe,type=area_effect_cloud,distance=..2] run tp @s ~ ~ ~ ~ ~

#spawned node will inherit our movement pattern
execute if score @s editArg3 matches 1.. run scoreboard players operation @e[tag=setMe,type=area_effect_cloud,distance=..2] movementPattern = @s editArg3

#generic data and cleanup
function phan:game/1/spawning/spawn__give_generic_data
tag @e[tag=setMe,type=area_effect_cloud,distance=..2] remove setMe