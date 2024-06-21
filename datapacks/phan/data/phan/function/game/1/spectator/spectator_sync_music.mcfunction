#don't ever sync with these specified music tracks:
scoreboard players set #test value 1
execute if score #spectatorMusic value matches 5 run scoreboard players set #test value 0
execute if score #spectatorMusic value matches 11 run scoreboard players set #test value 0

#update music if it changed
scoreboard players operation #bgmCheck value = @s musicTrack
#play the proper music track
execute if score #test value matches 1 run scoreboard players operation @s musicTrack = #spectatorMusic value
#did our bgm track change? start the music over
execute unless score #bgmCheck value = @s musicTrack run function phan:bgm/set_bgm_self