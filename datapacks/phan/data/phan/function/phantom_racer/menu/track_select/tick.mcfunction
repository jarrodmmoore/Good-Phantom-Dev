#animation timer
scoreboard players add #tvAnimation value 1

#summon options gradually?
execute if score #tvAnimation value matches 10..20 run function phan:phantom_racer/menu/track_select/spawn_track_options

#start highlighting options once inputs can be made
execute if score #tvAnimation value matches 20.. unless score #tvMenuState1 value = #tvMenuState2 value run function phan:phantom_racer/menu/track_select/update_highlighted_item

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:1,add:-1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:1,add:1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:1,add:1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:1,add:-1,min:0,max:100,cooldown:4}
execute if score #tvMenuState1 value > #tvMaxIndex value run scoreboard players operation #tvMenuState1 value = #tvMaxIndex value

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. store result storage phan:level_index index int 1 run scoreboard players get #tvMenuState1 value
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. run function phan:phantom_racer/menu/track_select/select_index with storage phan:level_index