#select the thing
execute if score #tvMenuState1 value matches 0 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:0}
execute if score #tvMenuState1 value matches 1 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:2}
execute if score #tvMenuState1 value matches 2 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:3}
execute if score #tvMenuState1 value matches 3 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:4}
execute if score #tvMenuState1 value matches 4 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:5}
execute if score #tvMenuState1 value matches 5 run return run function phan:phantom_racer/menu/class_select/go_to_cup_select {class:6}

#back
execute if score #tvMenuState1 value matches 6 run return run function phan:phantom_racer/menu/class_select/go_to_mode_select