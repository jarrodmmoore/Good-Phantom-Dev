#check what we're looking at
$execute store result score #test value run data get storage phan:level_index act_select[$(index)]
$scoreboard players set #test2 value $(index)

#-2 = error noise
execute if score #test value matches -2 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8

#-1 = back
execute if score #test value matches -1 run return run function phan:phantom_racer/menu/track_select_act/go_to_track_select

#0 = random
execute if score #test value matches 0 unless score #test2 value matches 2..3 run return run function phan:phantom_racer/game_io/start_free_play_random {mode:0}
execute if score #test value matches 0 if score #test2 value matches 2 run return run function phan:phantom_racer/game_io/start_free_play_random {mode:1}
execute if score #test value matches 0 if score #test2 value matches 3 run return run function phan:phantom_racer/game_io/start_free_play_random {mode:2}

#1.. = specific level
execute if score #test value matches 1.. run scoreboard players operation #chosenLevel value = #tvChosenLevel value
execute if score #test value matches 1.. run scoreboard players operation #vAct value = #test value
execute if score #test value matches 1.. run return run function phan:phantom_racer/game_io/start_free_play