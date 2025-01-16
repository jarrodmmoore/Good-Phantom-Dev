#check what we're looking at
$execute store result score #test value run data get storage phan:level_index act_select[$(index)]
$scoreboard players set #test2 value $(index)

#-2 = error noise
execute if score #test value matches -2 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8

#-1 = back
execute if score #test value matches -1 run return run function phan:phantom_racer/menu/track_select_act/go_to_track_select

#0 = random
#1.. = specific level
execute if score #test value matches 0.. store result storage phan:gp_index gp_id int 1 run scoreboard players get #tvEditingTarget value
execute if score #test value matches 0.. run return run function phan:phantom_racer/grand_prix/add_track_to_storage with storage phan:gp_index