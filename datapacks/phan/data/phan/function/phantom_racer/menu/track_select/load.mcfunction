scoreboard players set #tvMenuState1 value 2
scoreboard players set #tvMenuState3 value 0
scoreboard players set #tvMenuState2 value -99
scoreboard players set #tvMenuState4 value -99
scoreboard players set #tvAnimation value 0
scoreboard players set #tvLastOperation value 0

#clear data in the level_select index. it supports up to 20 options (can easily expand here, if needed...)
data modify storage phan:level_index level_select set value [-1, 0, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3]
#possible values:
# -3 = terminate the list (stop scrolling)
# -2 = display an un-selectable padlock
# -1 = back button
# 0 = random
# 1.. = show a dream with the associated uid

#now figure out which dreams should be shown in each index
scoreboard players set #math value 2
function phan:phantom_racer/menu/track_select/populate_dream_index {id:6}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:2}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:4}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:5}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:3}
#...
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1001}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1002}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1003}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1004}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1005}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1006}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1007}
function phan:phantom_racer/menu/track_select/populate_dream_index {id:1008}
scoreboard players operation #tvMaxIndex value = #math value
scoreboard players remove #tvMaxIndex value 1

#phantom racer text should go away and get deleted
execute as @e[type=text_display,distance=..7,tag=tvLogo] run function phan:phantom_racer/menu/class_select/remove_phantom_racer_text

#get rid of text from other menus
scoreboard players set @e[type=text_display,distance=..7,tag=tvText] lifespan 0
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/destroy_text_highlight
scoreboard players set @e[type=item_display,tag=tvTrackDisplay,distance=..10] lifespan 0

#special text for dream name
summon text_display ~ ~1.25 ~ {Tags:["lobbyProp","tvText","tvSubtitle5","tvProp"],alignment:"center",text:'["",{"text":" ","bold":true}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},background:16777215}

#special text for track name
summon text_display ~ ~1 ~ {Tags:["lobbyProp","tvText","tvSubtitle6","tvProp"],alignment:"center",text:'["",{"text":" "}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},background:16777215}

#summon markers that mark where track preview images should stop after scrolling
summon marker ~ ~ ~-3.99 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop0"]}
summon marker ~ ~ ~-2.66 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop1"]}
summon marker ~ ~ ~-1.33 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop2"]}
summon marker ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop3"]}
summon marker ~ ~ ~1.33 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop4"]}
summon marker ~ ~ ~2.66 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop5"]}
summon marker ~ ~ ~3.99 {Tags:["lobbyProp","tvProp","tvTrackPreviewStop","tvTrackPreviewStop6"]}