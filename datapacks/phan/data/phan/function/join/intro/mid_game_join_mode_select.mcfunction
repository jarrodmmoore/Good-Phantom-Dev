scoreboard players reset @s introProgress
gamemode adventure
tag @s add doneWithIntro
tag @s remove noInventory
execute if score #subGameState value matches 0 run tp @s 198 -21 118 -90 0
execute unless score #subGameState value matches 0 run tp @s 198 -29 118 -90 0

#adopt music
function phan:bgm/adopt_global_music_track
function phan:bgm/set_self_bgm_delayed