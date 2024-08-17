scoreboard players add #eyeSpawnMethod value 1
execute if score #eyeSpawnMethod value matches 2.. run scoreboard players set #eyeSpawnMethod value 0
execute if score #activeBattlePlayers value matches ..2 run scoreboard players set #eyeSpawnMethod value 1

#count number available
execute store result score #test3 value run execute if entity @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1,editArg3=1000..10000000}]

#find the top 50% of players
scoreboard players set #average value 0
execute as @a[tag=playing] run scoreboard players operation #average value += @s racePosDisplay
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players operation #average value += @s racePosDisplay
scoreboard players operation #average value /= #activeBattlePlayers value
execute as @a[tag=playing] if score @s racePosDisplay < #average value run tag @s add topHalfPlayers
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s racePosDisplay < #average value run tag @s add topHalfPlayers

#method 0 = spawn eye at one of the locations nearby a lower ranked player
execute if score #eyeSpawnMethod value matches ..0 if score #botsEnabled value matches ..0 as @a[limit=1,sort=random,tag=playing,tag=!topHalfPlayers] at @s run tag @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1,editArg3=1000..10000000},limit=3,sort=nearest] add mightSpawnHere
execute if score #eyeSpawnMethod value matches ..0 if score #botsEnabled value matches 1.. as @e[limit=1,sort=random,tag=playing,tag=!topHalfPlayers] at @s run tag @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1,editArg3=1000..10000000},limit=3,sort=nearest] add mightSpawnHere
execute if score #eyeSpawnMethod value matches ..0 as @e[limit=1,sort=random,type=marker,tag=mightSpawnHere] store result score @s editArg3 run random value 20..140
execute if score #eyeSpawnMethod value matches ..0 run tag @e[tag=mightSpawnHere,type=marker] remove mightSpawnHere

#method 1 = spawn eye at random location NOT near one of the leading players
execute if score #eyeSpawnMethod value matches 1.. if score #botsEnabled value matches ..0 if score #test3 value >= #activeBattlePlayers value as @a[tag=playing,tag=topHalfPlayers] at @s run tag @e[type=marker,tag=vsEyeSpawner,tag=!dontSpawnHere,scores={versusSpawn=1,editArg3=1000..10000000},limit=1,sort=nearest] add dontSpawnHere
execute if score #eyeSpawnMethod value matches 1.. if score #botsEnabled value matches 1.. if score #test3 value >= #activeBattlePlayers value as @e[tag=playing,tag=topHalfPlayers] at @s run tag @e[type=marker,tag=vsEyeSpawner,tag=!dontSpawnHere,scores={versusSpawn=1,editArg3=1000..10000000},limit=1,sort=nearest] add dontSpawnHere
execute if score #eyeSpawnMethod value matches 1.. as @e[limit=1,sort=random,type=marker,tag=vsEyeSpawner,tag=!dontSpawnHere,scores={versusSpawn=1,editArg3=1000..10000000}] store result score @s editArg3 run random value 20..140
execute if score #eyeSpawnMethod value matches 1.. run tag @e[tag=dontSpawnHere,type=marker] remove dontSpawnHere

#clean up tags
tag @a[tag=topHalfPlayers] remove topHalfPlayers
execute if score #botsEnabled value matches 1.. run tag @e[tag=topHalfPlayers,type=zombie] remove topHalfPlayers
