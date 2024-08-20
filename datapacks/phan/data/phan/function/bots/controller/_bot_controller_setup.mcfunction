#executed by a bot controller entity

#reset scores
function phan:bots/controller/reset_gameplay_scores

#need to pick a spawn!
scoreboard players operation @s startGrid = #startGrid value
scoreboard players operation @s vsRespawnDimension = #activeDimension value

#remember who we is
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID

#spawn entity at a valid versusStartPoint
scoreboard players set #botSpawnSuccess value 0
execute as @e[type=marker,tag=versusStartPoint,tag=node,scores={versusSpawn=1}] if score @s editArg1 = #startGrid value run tag @s add pickMe
execute at @e[type=marker,limit=1,tag=pickMe] run function phan:bots/spawn/respawn_entity_lookup with storage phan:bot_args
tag @e[type=marker,tag=pickMe] remove pickMe

#no versusStartPoint exists? just spawn on a player then, i guess
execute if score #botSpawnSuccess value matches 0 at @a[limit=1,sort=random,tag=doneWithIntro] run function phan:bots/spawn/respawn_entity_lookup with storage phan:bot_args

#if that didn't work either, then we'll keep trying until we find a spawn point

#don't forget to keep cycling the startGrid index! ;)
scoreboard players add #startGrid value 1
execute if score #startGrid value matches 26.. run scoreboard players set #startGrid value 1