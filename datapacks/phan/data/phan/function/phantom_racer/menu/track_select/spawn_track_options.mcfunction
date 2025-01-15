#summon them all, with storages for dynamic icons

#done from left to right. we'll do a one-time animation of them rising up from below

execute if score #tvAnimation value matches 10 positioned ~ ~-1.5 ~-2.66 run function phan:phantom_racer/menu/track_select/spawn_option_from_index {index:0}
execute if score #tvAnimation value matches 10 run tp @e[type=text_display,tag=setData,distance=..10] @e[type=marker,tag=tvTrackPreviewStop1,limit=1,distance=..7]
execute if score #tvAnimation value matches 10 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 1

execute if score #tvAnimation value matches 11 positioned ~ ~-1.5 ~-1.33 run function phan:phantom_racer/menu/track_select/spawn_option_from_index {index:1}
execute if score #tvAnimation value matches 11 run tp @e[type=text_display,tag=setData,distance=..10] @e[type=marker,tag=tvTrackPreviewStop2,limit=1,distance=..7]
execute if score #tvAnimation value matches 11 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 2

execute if score #tvAnimation value matches 12 positioned ~ ~-1.5 ~ run function phan:phantom_racer/menu/track_select/spawn_option_from_index {index:2}
execute if score #tvAnimation value matches 12 run tp @e[type=text_display,tag=setData,distance=..10] @e[type=marker,tag=tvTrackPreviewStop3,limit=1,distance=..7]
execute if score #tvAnimation value matches 12 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 3

execute if score #tvAnimation value matches 13 positioned ~ ~-1.5 ~1.33 run function phan:phantom_racer/menu/track_select/spawn_option_from_index {index:3}
execute if score #tvAnimation value matches 13 run tp @e[type=text_display,tag=setData,distance=..10] @e[type=marker,tag=tvTrackPreviewStop4,limit=1,distance=..7]
execute if score #tvAnimation value matches 13 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 4

execute if score #tvAnimation value matches 14 positioned ~ ~-1.5 ~2.66 run function phan:phantom_racer/menu/track_select/spawn_option_from_index {index:4}
execute if score #tvAnimation value matches 14 run tp @e[type=text_display,tag=setData,distance=..10] @e[type=marker,tag=tvTrackPreviewStop5,limit=1,distance=..7]
execute if score #tvAnimation value matches 14 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 5

execute if score #tvAnimation value matches 10..14 run tag @e[type=text_display,tag=setData,distance=..10] remove setData

#also spawn a nice background for the scrolling options
execute if score #tvAnimation value matches 10 positioned ~ ~.15 ~ run summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay","tvTracksBackground"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},brightness:{block:2,sky:2},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.01f,0f,0f],scale:[7.0f,0.0f,1.0f]}}
execute if score #tvAnimation value matches 11 as @e[type=item_display,tag=tvTracksBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[7.0f,1.5f,1.0f]}}
