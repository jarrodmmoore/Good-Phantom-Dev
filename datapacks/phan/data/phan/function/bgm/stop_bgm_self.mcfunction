scoreboard players operation #bgmCheck value = @s musicTrack
#play the proper music track (which is silence)
scoreboard players set @s musicTrack 0
#did our bgm track change? start the music over
execute unless score #bgmCheck value = @s musicTrack run function phan:bgm/set_bgm_self