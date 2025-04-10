#summon a menu option with an appropriate icon model


#this will fail to compile if the index is invalid
#i'm considering using this intentionally?

#...ehh, probably best if i don't
#the output log is becoming increasingly fussy with each update, so using intentional macro compile errors would probably backfire in the future

#look up whats in the list at our index
$execute store result score #test value run data get storage phan:level_index level_select[$(index)]

#-3 means do nothing
execute if score #test value matches -3 run return 0
#=====

#fallback model is generic
data modify storage phan:level_index model set value ["",{text:"\uE500",color:"white"}]

#-4 means show erase button
execute if score #test value matches -4 run data modify storage phan:level_index model set value ["",{text:"\uE507",color:"white"}]

#-2 means show lock
execute if score #test value matches -2 run data modify storage phan:level_index model set value ["",{text:"\uE506",color:"white"}]

#-1 means go back
execute if score #test value matches -1 unless score #tvEditingGrandPrix value matches 1.. run data modify storage phan:level_index model set value ["",{text:"\uE504",color:"white"}]
#-1 re-skin to be a "done" icon when editing a grand prix
execute if score #test value matches -1 if score #tvEditingGrandPrix value matches 1.. run data modify storage phan:level_index model set value ["",{text:"\uE505",color:"white"}]

#0 means random
execute if score #test value matches 0 run data modify storage phan:level_index model set value ["",{text:"\uE501",color:"white"}]

#1.. means look up the model from the associated dream (always uses act 1)
execute if score #test value matches 1.. store result storage phan:level_index level_id int 1 run scoreboard players get #test value
execute if score #test value matches 1.. run function phan:phantom_racer/menu/track_select/spawn_option_from_index_get_model with storage phan:level_index
#special cases for some of the stock dreams. i want to use the best looking / most representative icon for each.
execute if score #test value matches 2 run data modify storage phan:level_index model set from storage phan_dream_2:pr_act_2 thumbnail_text
execute if score #test value matches 3 run data modify storage phan:level_index model set from storage phan_dream_3:pr_act_2 thumbnail_text
execute if score #test value matches 4 run data modify storage phan:level_index model set from storage phan_dream_4:pr_act_3 thumbnail_text

#alright, now we can summon the thing!
function phan:phantom_racer/menu/track_select/spawn_option_from_index_go

#assign index score to the thing we summoned
$scoreboard players set @e[type=text_display,tag=setData,distance=..10] boxID $(index)

## remember to clean up the setData tag after running this!