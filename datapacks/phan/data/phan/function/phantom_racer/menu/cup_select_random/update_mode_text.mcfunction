#0 = any
#1 = race
#2 = battle

#update the text
execute unless score #tvMenuState9 value matches 1..2 as @e[type=text_display,tag=tvRandomPanel4,distance=..10] run data modify entity @s text set value '["",{"text":"< "},{"translate":"gp.phantom_racer.mode_any"},{"text":" >"}]'
execute if score #tvMenuState9 value matches 1 as @e[type=text_display,tag=tvRandomPanel4,distance=..10] run data modify entity @s text set value '["",{"text":"< "},{"translate":"gp.phantom_racer.mode_race"},{"text":" >"}]'
execute if score #tvMenuState9 value matches 2 as @e[type=text_display,tag=tvRandomPanel4,distance=..10] run data modify entity @s text set value '["",{"text":"< "},{"translate":"gp.phantom_racer.mode_battle"},{"text":" >"}]'

#set values
execute unless score #tvMenuState9 value matches 1..2 run function phan:phantom_racer/menu/cup_select_random/set_mode_any
execute if score #tvMenuState9 value matches 1 run function phan:phantom_racer/menu/cup_select_random/set_mode_race
execute if score #tvMenuState9 value matches 2 run function phan:phantom_racer/menu/cup_select_random/set_mode_battle

#immediately restart the preview scroll
scoreboard players set #tvShowTrackTimer value 0
scoreboard players set #tvShowTrack value 1
scoreboard players set @e[type=text_display,tag=tvTrackImage,distance=..10] lifespan 0

#sync up
scoreboard players operation #tvMenuState10 value = #tvMenuState9 value