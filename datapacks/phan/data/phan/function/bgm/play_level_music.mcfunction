scoreboard players operation #bgmCheck value = @s musicTrack
#play the proper music track
function phan:levels/_index_music_individual
#did our bgm track change? start the music over
execute unless score #bgmCheck value = @s musicTrack run function phan:bgm/set_self_bgm_delayed