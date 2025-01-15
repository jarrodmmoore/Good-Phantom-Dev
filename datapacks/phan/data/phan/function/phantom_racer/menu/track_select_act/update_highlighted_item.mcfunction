#we don't need to scroll this menu. saints be praised.

#shrink all unselected things
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight_square_big

#highlight the new thing
#note: boxID is the index of the menu option
execute store result storage phan:level_index index int 1 run scoreboard players get #tvMenuState3 value
execute as @e[type=text_display,tag=tvActDisplay,tag=!tvActsBackground,distance=..10] if score @s boxID = #tvMenuState3 value run function phan:phantom_racer/menu/track_select_act/update_highlighted_item_check_model with storage phan:level_index

#show name of whatever we're looking at
function phan:phantom_racer/menu/track_select_act/show_highlighted_track_name with storage phan:level_index

#sync up
scoreboard players operation #tvMenuState4 value = #tvMenuState3 value