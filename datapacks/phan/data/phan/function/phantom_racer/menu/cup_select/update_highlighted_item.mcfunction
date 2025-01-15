#shrink all unselected things
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight_square

#highlight the new thing
execute if score #tvMenuState1 value matches 0 if score #tvMenuState3 value matches 0 as @e[type=item_display,tag=tvCup0,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square_red

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 0 as @e[type=item_display,tag=tvCup1,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 0 as @e[type=item_display,tag=tvCup2,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 0 as @e[type=item_display,tag=tvCup3,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 as @e[type=item_display,tag=tvCup4,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 1 as @e[type=item_display,tag=tvCup1001,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 1 as @e[type=item_display,tag=tvCup1002,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 1 as @e[type=item_display,tag=tvCup1003,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 as @e[type=item_display,tag=tvCup5,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_square

#update subtitle text
execute if score #tvMenuState1 value matches 0 if score #tvMenuState3 value matches 0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run data modify entity @s text set value '["",{"text":" "}]'

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:1}
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:2}
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:3}
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 if score #unlockedCupDiamond value matches 1.. as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:4}
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 if score #unlockedCupDiamond value matches ..0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run data modify entity @s text set value '["",{"translate":"gp.phantom_racer.locked"}]'

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 1 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:1001}
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 1 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:1002}
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 1 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:1003}
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 if score #unlockedCupRandom value matches 1.. as @e[type=text_display,tag=tvSubtitle4,distance=..5] run function phan:phantom_racer/menu/cup_select/update_subtitle_using_data {uid:5}
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 if score #unlockedCupRandom value matches ..0 as @e[type=text_display,tag=tvSubtitle4,distance=..5] run data modify entity @s text set value '["",{"translate":"gp.phantom_racer.locked"}]'

#also update what cup we're trying to show tracks for
scoreboard players set #tvShowingCup value 0

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 0 run scoreboard players set #tvShowingCup value 1
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 0 run scoreboard players set #tvShowingCup value 2
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 0 run scoreboard players set #tvShowingCup value 3
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 0 if score #unlockedCupDiamond value matches 1.. run scoreboard players set #tvShowingCup value 4

execute if score #tvMenuState1 value matches 1 if score #tvMenuState3 value matches 1 run scoreboard players set #tvShowingCup value 1001
execute if score #tvMenuState1 value matches 2 if score #tvMenuState3 value matches 1 run scoreboard players set #tvShowingCup value 1002
execute if score #tvMenuState1 value matches 3 if score #tvMenuState3 value matches 1 run scoreboard players set #tvShowingCup value 1003
execute if score #tvMenuState1 value matches 4 if score #tvMenuState3 value matches 1 if score #unlockedCupRandom value matches 1.. run scoreboard players set #tvShowingCup value 5

#reset some variables
scoreboard players set #tvShowTrackTimer value 0
scoreboard players set #tvShowTrack value 1

#clear old track previews that are trying to scroll
scoreboard players set @e[type=text_display,tag=tvTrackImage,distance=..10] lifespan 0

#sync up
scoreboard players operation #tvMenuState2 value = #tvMenuState1 value
scoreboard players operation #tvMenuState4 value = #tvMenuState3 value