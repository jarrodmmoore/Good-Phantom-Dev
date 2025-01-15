#0 = play
execute if score #tvMenuState5 value matches 0 if score #tvMenuState8 value matches ..0 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
execute if score #tvMenuState5 value matches 0 if score #tvMenuState8 value matches 1.. run return run say play

#1 = edit
execute if score #tvMenuState5 value matches 1 run return run function phan:phantom_racer/menu/cup_select_custom/go_to_track_select_custom

#2 = back
execute if score #tvMenuState5 value matches 2 run return run function phan:phantom_racer/menu/cup_select_custom/go_to_cup_select