#we can assume gameState=4

tag @e[limit=1,sort=nearest,tag=ai,type=zombie,distance=..3] add catcher
execute at @e[limit=1,tag=catcher,type=zombie,distance=..3] positioned ~ ~1 ~ run tp @s ~ ~ ~
execute as @e[limit=1,tag=catcher,type=zombie,distance=..3] run scoreboard players add @s eyesToAdd 1
#execute if score #gameState value matches 4 as @e[limit=1,tag=catcher,type=zombie,distance=..2] run function phan:player/tell_spectators
#execute if score #gameState value matches 4 at @s run playsound minecraft:custom_sfx/pickup1 master @a[tag=tellMe] ~ ~ ~ 2.5 .8
playsound minecraft:custom_sfx/pickup1 master @a ~ ~ ~ .5 1.1

#clean up tag
tag @e[tag=catcher,type=zombie,distance=..3] remove catcher

#do we have a spawner? tell it we're done
scoreboard players operation #getID value = @s eyeSpawnerID
execute if score @s eyeSpawnerID matches 1.. as @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1}] if score @s eyeSpawnerID = #getID value run scoreboard players set @s editArg3 10000200

#now BEGONE
scoreboard players set @s lifespan 3
tag @s remove enderEye