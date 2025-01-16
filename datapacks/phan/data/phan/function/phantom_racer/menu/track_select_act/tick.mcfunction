#animation timer
scoreboard players add #tvAnimation value 1

#summon options gradually
#different anchor point depending on how many options we're expecting
execute if score #tvAnimation value matches 1..10 unless score #tvMaxIndexAct value matches 1.. run function phan:phantom_racer/menu/track_select_act/spawn_act_options
execute if score #tvAnimation value matches 1..10 if score #tvMaxIndexAct value matches 1 positioned ~ ~ ~-.625 run function phan:phantom_racer/menu/track_select_act/spawn_act_options
execute if score #tvAnimation value matches 1..10 if score #tvMaxIndexAct value matches 2 positioned ~ ~ ~-1.25 run function phan:phantom_racer/menu/track_select_act/spawn_act_options
execute if score #tvAnimation value matches 1..10 if score #tvMaxIndexAct value matches 3 positioned ~ ~ ~-1.875 run function phan:phantom_racer/menu/track_select_act/spawn_act_options
execute if score #tvAnimation value matches 1..10 if score #tvMaxIndexAct value matches 4.. positioned ~ ~ ~-2.5 run function phan:phantom_racer/menu/track_select_act/spawn_act_options
#also spawn a nice background for the scrolling options (needs to be immune to the offset thing we did)
execute if score #tvAnimation value matches 2 positioned ~-.1 ~.33 ~ run summon item_display ~ ~ ~ {Tags:["lobbyProp","tvProp","tvActDisplay","tvActsBackground"],item:{id:"stone",components:{"item_model":"gp/tv_gui/square"}},brightness:{block:4,sky:4},transformation:{left_rotation:[0.0f,0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0.01f,0f,0f],scale:[0.0f,0.0f,1.0f]}}

#start highlighting options once inputs can be made
execute if score #tvAnimation value matches 8.. unless score #tvMenuState3 value = #tvMenuState4 value run function phan:phantom_racer/menu/track_select_act/update_highlighted_item

#handle inputs
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches 1.. run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:3,add:-1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputUD value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:3,add:1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches 1.. run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:3,add:1,min:0,max:100,cooldown:4}
execute if score #tvCooldown value matches ..0 if score #tvInputLR value matches ..-1 run function phan:phantom_racer/menu/generic_select_change_minmax {menu_state:3,add:-1,min:0,max:100,cooldown:4}
execute if score #tvMenuState3 value > #tvMaxIndexAct value run scoreboard players operation #tvMenuState3 value = #tvMaxIndexAct value

#update round counter if that's a thing we have
execute if score #tvEditingGrandPrix value matches 1.. store result storage phan:gp_index gp_id int 1 run scoreboard players get #tvChosenGP value
execute if score #tvEditingGrandPrix value matches 1.. run function phan:phantom_racer/menu/track_select/gp_round_counter with storage phan:gp_index

#if player pushes START, select whatever we selected
execute if score #tvAnimation value matches 11.. if score #tvInputJumpImpulse value matches 1.. store result storage phan:level_index index int 1 run scoreboard players get #tvMenuState3 value
execute if score #tvAnimation value matches 11.. if score #tvInputJumpImpulse value matches 1.. unless score #tvEditingGrandPrix value matches 1.. run function phan:phantom_racer/menu/track_select_act/select_index with storage phan:level_index
execute if score #tvAnimation value matches 11.. if score #tvInputJumpImpulse value matches 1.. if score #tvEditingGrandPrix value matches 1.. run function phan:phantom_racer/menu/track_select_act/select_index_gp_edit with storage phan:level_index

#exit out if admin required and we're not admin
scoreboard players set #success value 0
execute as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers run scoreboard players set #success value 1
execute if score #success value matches 0 if score #tvMenuPage value matches 5 run function phan:phantom_racer/menu/track_select_act/go_to_track_select
