#check what we're looking at
$execute store result score #test value run data get storage phan:level_index level_select[$(index)]

#-2 = error noise
execute if score #test value matches -2 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8

#-1 = back
execute if score #test value matches -1 run return run function phan:phantom_racer/menu/track_select/go_to_mode_select

#0 = random

#1.. = specific level