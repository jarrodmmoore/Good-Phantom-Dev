#highlight the new thing
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight
execute if score #tvMenuState1 value matches 0 as @e[type=text_display,tag=tvGrandPrix,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 1 as @e[type=text_display,tag=tvFreePlay,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight

#sync up
scoreboard players operation #tvMenuState2 value = #tvMenuState1 value