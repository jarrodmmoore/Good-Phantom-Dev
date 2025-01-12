#do a quick player count. if 2+ players, make exhibition the default
execute store result score #test value run execute if entity @a[tag=doneWithIntro]

#select the thing
execute if score #tvMenuState1 value matches 0 if score #test value matches 2.. run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:0}
execute if score #tvMenuState1 value matches 0 if score #test value matches ..1 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
execute if score #tvMenuState1 value matches 1 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:2}
execute if score #tvMenuState1 value matches 2 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:3}
execute if score #tvMenuState1 value matches 3 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:4}
execute if score #tvMenuState1 value matches 4 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:5}
execute if score #tvMenuState1 value matches 5 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:6}

#back
execute if score #tvMenuState1 value matches 6 run return run function phan:phantom_racer/menu/class_select/go_to_mode_select