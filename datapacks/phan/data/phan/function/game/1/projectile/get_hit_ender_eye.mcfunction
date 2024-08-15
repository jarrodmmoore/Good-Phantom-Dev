#play sound at a guaranteed volume for projectileOwner and their spectators
execute as @a[tag=projectileOwner] run function phan:player/tell_spectators
execute unless score #gameState value matches 4 at @s run playsound minecraft:custom_sfx/pickup1 master @a[tag=tellMe] ~ ~ ~ 2.5 .9 .3
execute at @s run playsound minecraft:custom_sfx/pickup1 master @a[tag=!tellMe] ~ ~ ~ 2.5 .9

#do we have a spawner? tell it we're done
scoreboard players operation #getID value = @s eyeSpawnerID
execute if score @s eyeSpawnerID matches 1.. as @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1}] if score @s eyeSpawnerID = #getID value run scoreboard players set @s editArg3 10000200

#die
scoreboard players set @s lifespan 1
tag @s remove enderEye

#projectile owner gets da points
execute as @a[tag=projectileOwner] run function phan:game/1/player/score_ender_eye
execute if score #botsEnabled value matches 1.. as @e[tag=projectileOwner,type=zombie] run function phan:game/1/player/score_ender_eye

#can't be shot again
tag @s remove shootable