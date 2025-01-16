#wood cup, stone cup, iron cup
execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 0 run scoreboard players set #grandPrixActive value 1
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 0 run scoreboard players set #grandPrixActive value 2
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 0 run scoreboard players set #grandPrixActive value 3
execute if score #tvMenuState1 value matches 1..3 if score #tvMenuState3 value matches 0 run return run function phan:phantom_racer/game_io/start_grand_prix

#diamond cup
#error noise if not unlocked
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 unless score #unlockedCupDiamond value matches 1.. run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#boot if unlocked
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 if score #unlockedCupDiamond value matches 1.. run scoreboard players set #grandPrixActive value 4
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 if score #unlockedCupDiamond value matches 1.. run return run function phan:phantom_racer/game_io/start_grand_prix

#custom 1,2,3
execute if score #tvMenuState1 value matches 1..3 if score #tvMenuState3 value matches 1 run return run function phan:phantom_racer/menu/cup_select/go_to_cup_select_custom

#random cup
#error noise if not unlocked
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 unless score #unlockedCupRandom value matches 1.. run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#open random panel if unlocked
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 if score #unlockedCupRandom value matches 1.. run return run function phan:phantom_racer/menu/cup_select/go_to_cup_select_random

#back
execute if score #tvMenuState1 value matches 0 if score #tvMenuState3 value matches 0 run return run function phan:phantom_racer/menu/cup_select/go_to_class_select