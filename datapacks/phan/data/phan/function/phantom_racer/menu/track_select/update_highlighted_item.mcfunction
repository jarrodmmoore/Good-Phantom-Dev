#shrink all unselected things
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight_square_big

#scroll stuff
execute if score #tvMenuState1 value > #tvMenuState2 value run function phan:phantom_racer/menu/track_select/update_highlighted_item_scroll_right
execute if score #tvMenuState1 value < #tvMenuState2 value run function phan:phantom_racer/menu/track_select/update_highlighted_item_scroll_left
execute as @e[type=item_display,tag=tvTrackDisplay,tag=!tvTracksBackground,distance=..10] run function phan:phantom_racer/menu/track_select/update_menu_item_position

#highlight the new thing
#note: boxID is the index of the menu option
execute store result storage phan:level_index index int 1 run scoreboard players get #tvMenuState1 value
execute as @e[type=item_display,tag=tvTrackDisplay,tag=!tvTracksBackground,distance=..10] if score @s boxID = #tvMenuState1 value run function phan:phantom_racer/menu/track_select/update_highlighted_item_check_model with storage phan:level_index

#show name of whatever we're looking at
function phan:phantom_racer/menu/track_select/show_highlighted_track_name with storage phan:level_index

#sync up
scoreboard players operation #tvMenuState2 value = #tvMenuState1 value