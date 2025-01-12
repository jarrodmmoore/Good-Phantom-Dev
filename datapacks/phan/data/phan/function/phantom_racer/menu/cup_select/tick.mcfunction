#animation timer
scoreboard players add #tvAnimation value 1

#summon options gradually?
execute if score #tvAnimation value matches 10..20 run function phan:phantom_racer/menu/cup_select/spawn_cup_options

#start highlighting text once inputs can be made
#tvMenuState1 = column
#tvMenuState3 = row
execute if score #tvAnimation value matches 20.. unless score #tvMenuState1 value = #tvMenuState2 value run function phan:phantom_racer/menu/cup_select/update_highlighted_item
execute if score #tvAnimation value matches 20.. unless score #tvMenuState3 value = #tvMenuState4 value run function phan:phantom_racer/menu/cup_select/update_highlighted_item

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change_2 {menu_state:3,add:-1,mod:2,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_2 {menu_state:3,add:1,mod:2,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:1,mod:5,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:-1,mod:5,cooldown:4}

#spawn some scrolling track previews
execute if score #tvShowingCup value matches 1.. run function phan:phantom_racer/menu/cup_select/tick_show_track_previews

#can't be on any row other than 0 when in column 0
execute if score #tvMenuState1 value matches 0 unless score #tvMenuState3 value matches 0 run scoreboard players set #tvMenuState3 value 0

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. run function phan:phantom_racer/menu/cup_select/select_index