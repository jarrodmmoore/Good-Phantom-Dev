scoreboard players reset @s introProgress
gamemode spectator
tag @s add doneWithIntro

#allow player to use joinGame trigger
execute if score #gameState value matches 4 run scoreboard players enable @s joinGame

#adopt music
function phan:bgm/adopt_global_music_track
function phan:bgm/set_self_bgm_delayed