#fetch song from storage

#portal race song data
execute if score #gameState value matches 4 unless score @s pCurrentArea matches 2..4 store result score @s musicTrack run data get storage phan_dream_active:pr_act_1 music_track
execute if score #gameState value matches 4 if score @s pCurrentArea matches 2 store result score @s musicTrack run data get storage phan_dream_active:pr_act_2 music_track
execute if score #gameState value matches 4 if score @s pCurrentArea matches 3 store result score @s musicTrack run data get storage phan_dream_active:pr_act_3 music_track
execute if score #gameState value matches 4 if score @s pCurrentArea matches 4 store result score @s musicTrack run data get storage phan_dream_active:pr_act_4 music_track

#score attack song data
execute unless score #gameState value matches 4 unless score @s pCurrentArea matches 2..3 store result score @s musicTrack run data get storage phan_dream_active:sa_act_1 music_track
execute unless score #gameState value matches 4 if score @s pCurrentArea matches 2 store result score @s musicTrack run data get storage phan_dream_active:sa_act_2 music_track
execute unless score #gameState value matches 4 if score @s pCurrentArea matches 3 store result score @s musicTrack run data get storage phan_dream_active:sa_act_3 music_track


#song -1 is random, pick the pre-assigned random music track
execute if entity @s[scores={musicTrack=-1,pCurrentArea=1}] run scoreboard players operation @s musicTrack = #bgmRandomAct1 value
execute if entity @s[scores={musicTrack=-1,pCurrentArea=2}] run scoreboard players operation @s musicTrack = #bgmRandomAct2 value
execute if entity @s[scores={musicTrack=-1,pCurrentArea=3}] run scoreboard players operation @s musicTrack = #bgmRandomAct3 value
execute if entity @s[scores={musicTrack=-1,pCurrentArea=4}] run scoreboard players operation @s musicTrack = #bgmRandomAct3 value

#song -2 is custom path, need to split into 3 different values
execute if entity @s[scores={musicTrack=-2,pCurrentArea=1}] run scoreboard players set @s musicTrack -1
execute if entity @s[scores={musicTrack=-2,pCurrentArea=2}] run scoreboard players set @s musicTrack -2
execute if entity @s[scores={musicTrack=-2,pCurrentArea=3}] run scoreboard players set @s musicTrack -3
execute if entity @s[scores={musicTrack=-2,pCurrentArea=4}] run scoreboard players set @s musicTrack -4
execute unless score #gameState value matches 4 run scoreboard players remove @s[scores={musicTrack=..-1}] musicTrack 100
