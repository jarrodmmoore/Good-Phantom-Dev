#animation
scoreboard players add #tvAnimation value 1
execute as @e[type=text_display,distance=..7,tag=tvLogo] at @s run function phan:phantom_racer/menu/mode_select/logo_animate
#press jump button flashes before it vanishes
execute as @e[type=text_display,distance=..5,tag=tvPressStart] at @s run function phan:phantom_racer/menu/mode_select/press_start_animate

#summon options at 15
execute if score #tvAnimation value matches 15 run function phan:phantom_racer/menu/mode_select/spawn_text_options

#start highlighting text once inputs can be made
#tvMenuState1 = 1 -- Grand Prix
#tvMenuState1 = 2 -- Free Play
execute if score #tvAnimation value matches 16.. unless score #tvMenuState1 value = #tvMenuState2 value run function phan:phantom_racer/menu/mode_select/update_highlighted_item

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:-1,mod:2,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:1,mod:2,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:1,mod:2,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change {menu_state:1,add:-1,mod:2,cooldown:4}

#if player abandons, exit back to title
execute if score #tvAnimation value matches 25.. if score #tvCooldown value matches ..0 if score #tvControlState value matches 0 run return run function phan:phantom_racer/menu/mode_select/go_to_title

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. if score #tvMenuState1 value matches 0 run return run function phan:phantom_racer/menu/mode_select/go_to_class_select
execute if score #tvAnimation value matches 25.. if score #tvInputJumpImpulse value matches 1.. if score #tvMenuState1 value matches 1 run return run say free play