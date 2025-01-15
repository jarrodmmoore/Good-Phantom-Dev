#summon them all, with storages for dynamic icons
execute if score #tvAnimation value matches 10 positioned ~ ~.65 ~-3 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data {uid:0,icon_model:'barrier'}

execute if score #tvAnimation value matches 11 positioned ~ ~.65 ~-2 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_1:metadata
execute if score #tvAnimation value matches 12 positioned ~ ~.65 ~-1 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_2:metadata
execute if score #tvAnimation value matches 13 positioned ~ ~.65 ~ run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_3:metadata
execute if score #tvAnimation value matches 14 positioned ~ ~.65 ~1 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_4:metadata

execute if score #tvAnimation value matches 15 positioned ~ ~-.35 ~-2 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_1001:metadata
execute if score #tvAnimation value matches 16 positioned ~ ~-.35 ~-1 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_1002:metadata
execute if score #tvAnimation value matches 17 positioned ~ ~-.35 ~ run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_1003:metadata
execute if score #tvAnimation value matches 18 positioned ~ ~-.35 ~1 run function phan:phantom_racer/menu/cup_select/spawn_cup_using_data with storage phan_grand_prix_5:metadata

#also get ready to start showing map previews
execute if score #tvAnimation value matches 10 positioned ~ ~.5 ~2.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay","tvTracksBackground"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},brightness:{block:1,sky:0},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.01f,0f,0f],scale:[0.0f,2.95f,1.0f]}}
execute if score #tvAnimation value matches 11 as @e[type=item_display,tag=tvTracksBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:8,transformation:{scale:[1.4f,2.95f,1.0f]}}
execute if score #tvAnimation value matches 20 positioned ~-.066 ~1.5 ~2.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},brightness:{block:1,sky:0},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[-0.01f,0f,0f],scale:[1.3f,1.0f,1.0f]}}
#execute if score #tvAnimation value matches 20 positioned ~ ~-.5 ~2.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvTrackDisplay"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},brightness:{block:1,sky:0},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[-0.01f,0f,0f],scale:[1.1f,1.0f,1.0f]}}

#update state of a few buttons depending if they're unlocked
execute if score #tvAnimation value matches 14 if score #unlockedCupDiamond value matches ..0 as @e[type=item_display,tag=tvCup4,distance=..10] run item replace entity @s contents with stone[item_model=magenta_dye]
execute if score #tvAnimation value matches 18 if score #unlockedCupRandom value matches ..0 as @e[type=item_display,tag=tvCup5,distance=..10] run item replace entity @s contents with stone[item_model=magenta_dye]