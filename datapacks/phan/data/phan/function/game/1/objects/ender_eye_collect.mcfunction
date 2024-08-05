tag @a[limit=1,sort=nearest,tag=playing] add catcher
execute at @a[limit=1,tag=catcher] positioned ~ ~1 ~ run tp @s ~ ~ ~
execute if entity @s[tag=!hiddenMusicDisc] as @a[limit=1,tag=catcher] run function phan:game/1/player/score_ender_eye
execute if entity @s[tag=hiddenMusicDisc] as @a[limit=1,tag=catcher] run function phan:game/1/player/score_music_disc
execute unless score #gameState value matches 4 at @s run playsound minecraft:custom_sfx/pickup1 master @a ~ ~ ~ 2.5 .8
execute if score #gameState value matches 4 as @a[tag=catcher] run function phan:player/tell_spectators
execute if score #gameState value matches 4 at @s run playsound minecraft:custom_sfx/pickup1 master @a[tag=tellMe] ~ ~ ~ 2.5 .8

#found a hidden music disc!
execute if entity @s[tag=hiddenMusicDisc] run function phan:game/1/objects/hidden_music_disc/_index

#clean up tag
tag @a[tag=catcher] remove catcher

#do we have a spawner? tell it we're done
scoreboard players operation #getID value = @s eyeSpawnerID
execute if score @s eyeSpawnerID matches 1.. as @e[type=marker,tag=vsEyeSpawner,scores={versusSpawn=1}] if score @s eyeSpawnerID = #getID value run scoreboard players set @s editArg3 10000200

#now BEGONE
scoreboard players set @s lifespan 3
tag @s remove enderEye