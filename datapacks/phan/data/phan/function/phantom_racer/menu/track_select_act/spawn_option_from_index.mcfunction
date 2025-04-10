#summon a menu option with an appropriate icon model


#look up whats in the list at our index
$execute store result score #test value run data get storage phan:level_index act_select[$(index)]
$scoreboard players set #test2 value $(index)

#-3 means do nothing
execute if score #test value matches -3 run return 0
#=====

#fallback model is generic preview
data modify storage phan:level_index model set value ["",{text:"\uE500",color:"white"}]

#-2 means show lock
execute if score #test value matches -2 run data modify storage phan:level_index model set value ["",{text:"\uE506",color:"white"}]

#-1 means go back
execute if score #test value matches -1 run data modify storage phan:level_index model set value ["",{text:"\uE504",color:"white"}]

#0 means random
execute if score #test value matches 0 unless score #test2 value matches 2..3 run data modify storage phan:level_index model set value ["",{text:"\uE501",color:"white"}]
execute if score #test value matches 0 if score #test2 value matches 2 run data modify storage phan:level_index model set value ["",{text:"\uE502",color:"white"}]
execute if score #test value matches 0 if score #test2 value matches 3 run data modify storage phan:level_index model set value ["",{text:"\uE503",color:"white"}]

#1.. means look up the model from the associated act of the selected dream
execute store result storage phan:level_index level_id int 1 run scoreboard players get #tvChosenLevel value
execute if score #test value matches 1.. store result storage phan:level_index act int 1 run scoreboard players get #test value
execute if score #test value matches 1.. run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index_get_model with storage phan:level_index

#alright, now we can summon the thing!
function phan:phantom_racer/menu/track_select_act/spawn_option_from_index_go with storage phan:level_index

#assign index score to the thing we summoned
$scoreboard players set @e[type=text_display,tag=setData,distance=..10] boxID $(index)

## remember to clean up the setData tag after running this!