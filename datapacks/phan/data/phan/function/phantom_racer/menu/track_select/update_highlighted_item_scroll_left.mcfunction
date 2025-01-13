#stuff moves to the right when player moves left

#never scroll if we're near the edge
scoreboard players operation #math value = #tvMaxIndex value
scoreboard players operation #math value -= #tvMenuState1 value
execute if score #math value matches ..2 run return 0

#never scroll if we're near the edge
execute if score #tvMenuState1 value matches ..1 run return 0
#=====

#summon new thing on left. should be 2 indices behind what just got selected
scoreboard players operation #math value = #tvMenuState1 value
scoreboard players remove #math value 2
execute store result storage phan:level_index index int 1 run scoreboard players get #math value
execute at @e[limit=1,type=marker,tag=tvTrackPreviewStop0,distance=..10] run function phan:phantom_racer/menu/track_select/spawn_option_from_index with storage phan:level_index
scoreboard players set @e[type=item_display,tag=setData,distance=..10] botID 0
tag @e[type=item_display,tag=setData,distance=..10] remove setData

#get ready to move everything over!
scoreboard players add @e[type=item_display,tag=tvTrackDisplay,tag=!tvTracksBackground,distance=..10] botID 1