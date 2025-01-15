#tvMenuState1 and 2 retain their previous value.
#tvChosenLevel has been set prior to this running, and is very important! it keeps track of what dream we're looking at
scoreboard players set #tvMenuState3 value 0
scoreboard players set #tvMenuState4 value -99
scoreboard players set #tvAnimation value 0
scoreboard players set #tvCooldown value 10
scoreboard players set #tvLastOperation value 0

#special text for act name
summon text_display ~-.133 ~-.8 ~ {Tags:["lobbyProp","tvText","tvSubtitle7","tvProp"],alignment:"center",text:'["",{"text":" ","bold":true}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},background:16777215}

#random track select? use this pre=made storage and dash.
execute if score #tvChosenLevel value matches 0 run scoreboard players set #tvMaxIndexAct value 3
execute if score #tvChosenLevel value matches 0 run return run data modify storage phan:level_index act_select set value [-1, 0, 0, 0, -3]
#=====

#not random?
#ok, figure out how many acts we're gonna offer
data modify storage phan:level_index act_select set value [-1, -3, -3, -3, -3]
#possible values:
# -3 = terminate the list
# -2 = display an un-selectable padlock
# -1 = back button
# 0 = random
# 1.. = show an act with the associated id

#figure out which acts should be shown in each index
scoreboard players set #math value 1
execute store result storage phan:level_index level_id int 1 run scoreboard players get #tvChosenLevel value
data modify storage phan:level_index act set value 1
function phan:phantom_racer/menu/track_select_act/populate_act_index with storage phan:level_index
data modify storage phan:level_index act set value 2
function phan:phantom_racer/menu/track_select_act/populate_act_index with storage phan:level_index
data modify storage phan:level_index act set value 3
function phan:phantom_racer/menu/track_select_act/populate_act_index with storage phan:level_index
data modify storage phan:level_index act set value 4
function phan:phantom_racer/menu/track_select_act/populate_act_index with storage phan:level_index
scoreboard players operation #tvMaxIndexAct value = #math value
scoreboard players remove #tvMaxIndexAct value 1