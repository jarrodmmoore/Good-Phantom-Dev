#set #grandPrixActive before running!

#clear all randomization cooldowns before starting
function phan:phantom_racer/game_io/clear_randomization_cooldowns

#start on round 1. this will be used to index this cup's track data
scoreboard players set #grandPrixRound value 1
#also find the max rounds count
execute store result storage phan:gp_index gp_id int 1 run scoreboard players get #grandPrixActive value
function phan:phantom_racer/game_io/gp_get_max_round_count with storage phan:gp_index

#multiplayer: snitch on who did this
execute store result score #test value run execute if entity @a[tag=doneWithIntro]
execute as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers if entity @s[tag=debugMultiplayer] run scoreboard players set #test value 2
execute if score #test value matches 2.. as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.phantom_racer.started_grand_prix",color:"white"}]

#clear bots and re-summon based on chosen class
function phan:game/2/bots/delete_all_bots

#(grandPrixClass 0 is exhibition, meaning 0 bots)
execute if score #grandPrixClass value matches 1 run function phan:phantom_racer/game_io/create_bots_beginner
execute if score #grandPrixClass value matches 2 run function phan:phantom_racer/game_io/create_bots_novice
execute if score #grandPrixClass value matches 3 run function phan:phantom_racer/game_io/create_bots_intermediate
execute if score #grandPrixClass value matches 4 run function phan:phantom_racer/game_io/create_bots_expert
execute if score #grandPrixClass value matches 5 run function phan:phantom_racer/game_io/create_bots_nightmare
execute if score #grandPrixClass value matches 6.. run function phan:phantom_racer/game_io/create_bots_ultranightmare

#send players to the place
function phan:game/2/_2_init
function phan:game/2/start_mode_versus