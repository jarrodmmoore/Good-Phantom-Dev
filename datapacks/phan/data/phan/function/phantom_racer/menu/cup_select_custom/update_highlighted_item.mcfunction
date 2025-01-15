#we don't need to scroll this menu. saints be praised.

#shrink all unselected things
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight

#highlight the new thing
execute if score #tvMenuState5 value matches 0 as @e[type=text_display,tag=tvCustomPanel1,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState5 value matches 1 as @e[type=text_display,tag=tvCustomPanel2,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState5 value matches 2 as @e[type=text_display,tag=tvCustomPanel3,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_red

#sync up
scoreboard players operation #tvMenuState6 value = #tvMenuState5 value