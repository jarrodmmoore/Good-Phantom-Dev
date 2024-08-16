scoreboard players operation #check value = @s checkFake

#check=0?
#if we're on the first lap, respawn at a player start point.
#if we're on the second lap or later, respawn at the highest checkpoint which we should be coming from.
execute if score #check value matches 0 unless score @s lap matches 0..1 run scoreboard players operation #check value = #vCheckPoints value

#respawn at the proper place (assuming it is loaded)
execute if score #check value matches 0 at @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data

execute if score #check value matches 1 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=1},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 2 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=2},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 3 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=3},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 4 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=4},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 5 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=5},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 6 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=6},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 7 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=7},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 8 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=8},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 9 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=9},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 10 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=10},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data

execute if score #check value matches 11 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=11},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 12 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=12},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 13 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=13},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 14 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=14},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 15 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=15},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 16 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=16},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 17 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=17},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 18 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=18},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 19 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=19},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 20 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=20},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data

execute if score #check value matches 21 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=21},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 22 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=22},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 23 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=23},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 24 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=24},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
execute if score #check value matches 25 at @e[type=marker,tag=checkpoint,tag=node,scores={versusSpawn=1,editArg1=25},limit=1,sort=random] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data
