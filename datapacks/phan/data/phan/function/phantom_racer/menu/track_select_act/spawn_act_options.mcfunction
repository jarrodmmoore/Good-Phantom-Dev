#summon them all, with storages for dynamic icons

#done from left to right. we'll summon them right away

execute if score #tvAnimation value matches 4 positioned ~-.133 ~.33 ~ run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index {index:0}
execute if score #tvAnimation value matches 4 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 1

execute if score #tvAnimation value matches 5 positioned ~-.133 ~.33 ~1.25 run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index {index:1}
execute if score #tvAnimation value matches 5 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 2

execute if score #tvAnimation value matches 6 positioned ~-.133 ~.33 ~2.5 run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index {index:2}
execute if score #tvAnimation value matches 6 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 3

execute if score #tvAnimation value matches 7 positioned ~-.133 ~.33 ~3.75 run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index {index:3}
execute if score #tvAnimation value matches 7 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 4

execute if score #tvAnimation value matches 8 positioned ~-.133 ~.33 ~5 run function phan:phantom_racer/menu/track_select_act/spawn_option_from_index {index:4}
execute if score #tvAnimation value matches 8 run scoreboard players set @e[type=text_display,tag=setData,distance=..10] botID 5

execute if score #tvAnimation value matches 4..8 run tag @e[type=text_display,tag=setData,distance=..10] remove setData

#get the background up to size, scaled to how many options we've got
execute if score #tvAnimation value matches 3 unless score #tvMaxIndexAct value matches 1.. as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[2.5f,1.5f,1.0f]}}
execute if score #tvAnimation value matches 3 if score #tvMaxIndexAct value matches 1 as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[3.5f,1.5f,1.0f]}}
execute if score #tvAnimation value matches 3 if score #tvMaxIndexAct value matches 2 as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[4.5f,1.5f,1.0f]}}
execute if score #tvAnimation value matches 3 if score #tvMaxIndexAct value matches 3 as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[5.5f,1.5f,1.0f]}}
execute if score #tvAnimation value matches 3 if score #tvMaxIndexAct value matches 4.. as @e[type=item_display,tag=tvActsBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:4,transformation:{scale:[6.5f,1.5f,1.0f]}}
