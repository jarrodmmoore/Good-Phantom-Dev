#reset assist mode
function phan:game/0/assist_mode/_disable_assist_mode

#reset game data
scoreboard players add #resetWave value 1
function phan:__erase_high_scores
function phan:__erase_found_music_discs
function phan:__reset_level_progression
scoreboard players set #lastModePlayed value 1

#all admins currently on the server retain admin. all others will lose it
execute if score #requireAdmin value matches 1 as @a[tag=admin] run scoreboard players operation @s resetWave = #resetWave value
#give admin tags to pre-defined admin players again
function phan:admin_player_whitelist

#delete all bots
function phan:game/2/bots/delete_all_bots

#clearing scoreboard cache allowed? maybe.
scoreboard players set #allowClearCache value 0

#no sidebar!
scoreboard objectives setdisplay sidebar