#look up what level is in storage
execute store result storage phan:gp_index round int 1 run scoreboard players get #grandPrixRound value
execute store result storage phan:gp_index gp_id int 1 run scoreboard players get #grandPrixActive value
function phan:phantom_racer/game_io/gp_get_round_data_go with storage phan:gp_index

#verify that the chosen dream/act is indeed playable
scoreboard players set #success value 1
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute store result storage phan:level_index act int 1 run scoreboard players get #vAct value
execute if score #chosenLevel value matches 1.. if score #vAct value matches 1..4 run function phan:phantom_racer/game_io/gp_verify_dream_act_playable with storage phan:level_index
#if not playable, then play a random dream instead.
execute if score #success value matches 0 run scoreboard players set #vAct value -1

#if vAct is not in range 0..4, something went wrong. fall back to random track
execute unless score #vAct value matches 1..4 run scoreboard players set #chosenLevel value 0
execute unless score #vAct value matches 1..4 run scoreboard players set #vAct value 1

#get ready to show round
bossbar set general_bossbar name [""]
bossbar set general_buffer players @a[tag=doneWithIntro]
bossbar set general_bossbar players @a[tag=doneWithIntro]

#if chosenLevel is 0, pick a random track.
#random any
execute if score #chosenLevel value matches ..0 if score #vAct value matches ..1 run return run function phan:phantom_racer/game_io/pick_random_track {mode:0}
#random race
execute if score #chosenLevel value matches ..0 if score #vAct value matches 2 run return run function phan:phantom_racer/game_io/pick_random_track {mode:1}
#random battle
execute if score #chosenLevel value matches ..0 if score #vAct value matches 3.. run return run function phan:phantom_racer/game_io/pick_random_track {mode:2}