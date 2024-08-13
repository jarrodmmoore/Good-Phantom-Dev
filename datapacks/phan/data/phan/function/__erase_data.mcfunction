#reset assist mode
scoreboard players set #assist_movement value 0
scoreboard players set #assist_energy value 0
scoreboard players set #assist_enemies value 0
#
scoreboard players set #assist_time_limit value 0
scoreboard players set #assist_combos value 0
scoreboard players set #assist_navigation value 0
#
scoreboard players set #assist_items value 0
scoreboard players set #assist_catch_up value 0
scoreboard players set #assist_rival_bot value 0
scoreboard players set #assist_race_end_time value 0
#
function phan:game/0/assist_mode/check_if_assists_enabled

#reset game data
scoreboard players add #resetWave value 1
function phan:__erase_high_scores
function phan:__erase_found_music_discs
function phan:__reset_level_progression
scoreboard players set #lastModePlayed value 1
#all admins currently on the server retain admin. all others will lose it
execute if score #requireAdmin value matches 1 as @a[tag=admin] run scoreboard players operation @s resetWave = #resetWave value

#delete all bots
function phan:game/2/bots/delete_all_bots

#no sidebar!
scoreboard objectives setdisplay sidebar