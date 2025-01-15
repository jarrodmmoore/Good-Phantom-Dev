#$(index)

#look up what we're supposed to be
$execute store result score #test value run data get storage phan:level_index act_select[$(index)]
$scoreboard players set #test2 value $(index)


#-2 means LOCKED
execute if score #test value matches ..-2 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] text set value '["",{"translate":"gp.phantom_racer.locked"}]'

#-1 means nothing
execute if score #test value matches -1 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] text set value '["",{"text":" "}]'

#0 means random
execute if score #test value matches 0 unless score #test2 value matches 2..3 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] text set value '["",{"translate":"gp.phantom_racer.random_any","bold":false}]'
execute if score #test value matches 0 if score #test2 value matches 2 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] text set value '["",{"translate":"gp.phantom_racer.random_race","bold":false}]'
execute if score #test value matches 0 if score #test2 value matches 3 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] text set value '["",{"translate":"gp.phantom_racer.random_battle","bold":false}]'

#1.. means go look up the name_display for this dream
execute store result storage phan:level_index level_id int 1 run scoreboard players get #tvChosenLevel value
execute store result storage phan:level_index act int 1 run scoreboard players get #test value
execute if score #test value matches 1.. run function phan:phantom_racer/menu/track_select_act/show_highlighted_track_name_lookup with storage phan:level_index


#set background color, too.
#-1 results in fully transparent
#not -1 results in opaque gray background
execute unless score #test value matches -1 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] background set value -11908534
execute if score #test value matches -1 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle7,distance=..5] background set value 16777215