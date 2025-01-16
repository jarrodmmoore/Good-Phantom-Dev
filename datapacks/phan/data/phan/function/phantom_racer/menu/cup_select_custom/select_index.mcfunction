#0 = play
#can't play if the grand prix has 0 rounds
execute if score #tvMenuState5 value matches 0 if score #tvMenuState8 value matches ..0 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#valid, play it
execute if score #tvMenuState5 value matches 0 if score #tvMenuState1 value matches 1 run scoreboard players set #grandPrixActive value 1001
execute if score #tvMenuState5 value matches 0 if score #tvMenuState1 value matches 2 run scoreboard players set #grandPrixActive value 1002
execute if score #tvMenuState5 value matches 0 if score #tvMenuState1 value matches 3 run scoreboard players set #grandPrixActive value 1003
execute if score #tvMenuState5 value matches 0 run return run function phan:phantom_racer/game_io/start_grand_prix

#1 = edit
execute if score #tvMenuState5 value matches 1 run return run function phan:phantom_racer/menu/cup_select_custom/go_to_track_select_custom

#2 = back
execute if score #tvMenuState5 value matches 2 run return run function phan:phantom_racer/menu/cup_select_custom/go_to_cup_select