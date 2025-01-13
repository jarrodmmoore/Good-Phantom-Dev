#$(index)

#look up what we're supposed to be
$execute store result score #test value run data get storage phan:level_index level_select[$(index)]


#-2 means ???
execute if score #test value matches ..-2 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle5,distance=..5] text set value '["",{"text":"\\uE300"}]'

#-1 means nothing
execute if score #test value matches -1 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle5,distance=..5] text set value '["",{"text":" "}]'

#0 means random
execute if score #test value matches 0 run data modify entity @e[limit=1,type=text_display,tag=tvSubtitle5,distance=..5] text set value '["",{"text":"Random","bold":true}]'

#1.. means go look up the name_display for this dream
execute store result storage phan:level_index level_id int 1 run scoreboard players get #test value
execute if score #test value matches 1.. run function phan:phantom_racer/menu/track_select/show_highlighted_track_name_lookup with storage phan:level_index
