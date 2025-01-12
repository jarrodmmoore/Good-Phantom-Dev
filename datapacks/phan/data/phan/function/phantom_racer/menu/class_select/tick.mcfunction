#animation timer
scoreboard players add #tvAnimation value 1

#summon options gradually?
execute if score #tvAnimation value matches 10..20 run function phan:phantom_racer/menu/class_select/spawn_text_options

#start highlighting text once inputs can be made
#tvMenuState1 = 0 -- Exhibition
#tvMenuState1 = 1 -- Novice
#tvMenuState1 = 2 -- Intermediate
#tvMenuState1 = 3 -- Expert
#tvMenuState1 = 4 -- Nightmare!
#tvMenuState1 = 5 -- ULTRANIGHTMARE!
#tvMenuState1 = 6 -- Back
execute if score #tvAnimation value matches 15.. unless score #tvMenuState1 value = #tvMenuState2 value run function phan:phantom_racer/menu/class_select/update_highlighted_item

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:-1,mod:7,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:1,mod:7,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:1,mod:7,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:-1,mod:7,cooldown:4}

#can't hover over options that aren't unlocked yet
execute if score #tvLastOperation value matches 1 if score #tvMenuState1 value matches 4 if score #unlockedNightmare value matches 0 run scoreboard players add #tvMenuState1 value 1
execute if score #tvLastOperation value matches 1 if score #tvMenuState1 value matches 5 if score #unlockedUltranightmare value matches 0 run scoreboard players add #tvMenuState1 value 1
execute if score #tvLastOperation value matches -1 if score #tvMenuState1 value matches 5 if score #unlockedUltranightmare value matches 0 run scoreboard players remove #tvMenuState1 value 1
execute if score #tvLastOperation value matches -1 if score #tvMenuState1 value matches 4 if score #unlockedNightmare value matches 0 run scoreboard players remove #tvMenuState1 value 1

#if player abandons, exit back to title
#execute if score #tvAnimation value matches 25.. if score #tvCooldown value matches ..0 if score #tvControlState value matches 0 run return run function phan:phantom_racer/menu/mode_select/go_to_title

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. run function phan:phantom_racer/menu/class_select/select_index