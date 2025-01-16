#0 = set round count back to 5
execute if score #tvMenuState5 value matches 0 run return run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:7,add:-50,min:5,max:50,cooldown:2}

#1 = ok
execute if score #tvMenuState5 value matches 1 run return run function phan:phantom_racer/game_io/start_grand_prix_random

#2 = back
execute if score #tvMenuState5 value matches 2 run return run function phan:phantom_racer/menu/cup_select_random/go_to_cup_select