#do the thing
execute if score #tvMenuPage value matches 0 run function phan:phantom_racer/menu/title/tick
execute if score #tvMenuPage value matches 1 run function phan:phantom_racer/menu/mode_select/tick
execute if score #tvMenuPage value matches 2 run function phan:phantom_racer/menu/class_select/tick
execute if score #tvMenuPage value matches 3 run function phan:phantom_racer/menu/cup_select/tick
execute if score #tvMenuPage value matches 4 run function phan:phantom_racer/menu/track_select/tick
#...