#animation timer
scoreboard players add #tvAnimation value 1

#summon options gradually?
execute if score #tvAnimation value matches 1..10 run function phan:phantom_racer/menu/cup_select_random/spawn_panel

#start highlighting text once inputs can be made
execute if score #tvAnimation value matches 10.. unless score #tvMenuState5 value = #tvMenuState6 value run function phan:phantom_racer/menu/cup_select_random/update_highlighted_item
execute if score #tvAnimation value matches 10.. unless score #tvMenuState7 value = #tvMenuState8 value run function phan:phantom_racer/menu/cup_select_random/update_round_count_text

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change_2 {menu_state:5,add:-1,mod:3,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_2 {menu_state:5,add:1,mod:3,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvMenuState5 value matches 0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:7,add:1,min:1,max:50,cooldown:2}
execute if score #tvCooldown value matches ..0 if score #tvMenuState5 value matches 0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:7,add:-1,min:1,max:50,cooldown:2}

#spawn some scrolling track previews
execute if score #tvShowingCup value matches 1.. run function phan:phantom_racer/menu/cup_select/tick_show_track_previews

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 10.. if score #tvInputJumpImpulse value matches 1.. run function phan:phantom_racer/menu/cup_select_random/select_index