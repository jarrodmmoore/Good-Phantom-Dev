#spawn an area effect cloud that will summon an enemy and infinitely re-summon it when it dies

#editArg2 is what we are
execute unless score @s editArg2 matches 2.. run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnZombie"],Duration:69420}
execute if score @s editArg2 matches 2 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnZombieKnight"],Duration:69420}
execute if score @s editArg2 matches 3 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnSkeleton"],Duration:69420}
execute if score @s editArg2 matches 4 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnVindicator"],Duration:69420}
execute if score @s editArg2 matches 5 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnBabyGhast"],Duration:69420}
execute if score @s editArg2 matches 6 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnGuardian"],Duration:69420}
execute if score @s editArg2 matches 7 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnTurret"],Duration:69420}
execute if score @s editArg2 matches 8 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnIronGolem"],Duration:69420}
execute if score @s editArg2 matches 9 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnTNTGolem"],Duration:69420}
execute if score @s editArg2 matches 10 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnShulker"],Duration:69420}
execute if score @s editArg2 matches 11 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnVex"],Duration:69420}
execute if score @s editArg2 matches 12 run summon area_effect_cloud ~ ~ ~ {Tags:["checkValid","setMe","groupB","spawner","repeatSpawn","spawnMine"],Duration:69420}

#setMe gets rotation of the node that spawned it
execute as @e[tag=setMe] run tp @s ~ ~ ~ ~ ~

#spawned node will inherit our movement pattern
execute if score @s editArg3 matches 1.. run scoreboard players operation @e[tag=setMe] movementPattern = @s editArg3

#get unique identifier so we can track if our entity exists
scoreboard players add #enemyID value 1
scoreboard players operation @e[tag=setMe] enemyID = #enemyID value

#random delay on first spawn
execute store result score @e[tag=setMe] age run random value -10..30

#generic data and cleanup
function phan:game/1/spawning/spawn__give_generic_data
tag @e[tag=setMe] remove setMe