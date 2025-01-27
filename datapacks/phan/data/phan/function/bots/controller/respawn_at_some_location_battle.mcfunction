#we need to be careful not to hand off the execution context to another entity.
#botController needs to run the respawn function

#pick a random node to respawn at (preferably one that hasn't been used recently)
scoreboard players set #test value 0
scoreboard players remove @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1,editArg3=1..}] editArg3 1
execute as @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1,editArg3=..0},limit=1,sort=random] run function phan:bots/controller/respawn_at_some_location_battle_mark
execute if score #test value matches 0 as @e[type=marker,tag=versusStartPoint,scores={versusSpawn=1},limit=1,sort=random] run function phan:bots/controller/respawn_at_some_location_battle_mark

#do it
execute if score #test value matches 1 at @e[type=marker,tag=respawningHere,limit=1] if loaded ~ ~ ~ run function phan:bots/spawn/respawn_entity with storage phan:bot_data

#clean-up
tag @e[type=marker,tag=respawningHere] remove respawningHere