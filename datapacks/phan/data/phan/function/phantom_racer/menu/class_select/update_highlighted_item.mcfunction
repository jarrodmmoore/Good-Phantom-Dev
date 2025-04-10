#highlight the new thing
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/minimize_text_highlight
execute if score #tvMenuState1 value matches 0 as @e[type=text_display,tag=tvExhibition,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 1 as @e[type=text_display,tag=tvNovice,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 2 as @e[type=text_display,tag=tvIntermediate,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 3 as @e[type=text_display,tag=tvExpert,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 4 as @e[type=text_display,tag=tvNightmare,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 5 as @e[type=text_display,tag=tvUltranightmare,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight
execute if score #tvMenuState1 value matches 6 as @e[type=text_display,tag=tvBack,distance=..10] on passengers run function phan:phantom_racer/menu/maximize_text_highlight_red

#update state of the exhibition button depending on player count
execute store result score #test value run execute if entity @a[tag=doneWithIntro]
execute if entity @a[tag=debugMultiplayer] run scoreboard players set #test value 2
#execute if score #test value matches ..1 as @e[type=text_display,tag=tvExhibition,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.exhibition",color:"dark_gray"}]
#execute if score #test value matches 2.. as @e[type=text_display,tag=tvExhibition,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.exhibition",color:"white"}]
#^ jk, we'll just have this be always available. the team select thing handles this fine.

#update what the info text says
execute if score #tvMenuState1 value matches 0 if score #test value matches ..1 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.no_bots_required_2_players",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 0 if score #test value matches 2.. as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.no_bots_required",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 1 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.info_novice",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 2 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.info_intermediate",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 3 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.info_expert",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 4 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.info_nightmare",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 5 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{translate:"gp.phantom_racer.info_ultranightmare",color:"white",italic:true}]
execute if score #tvMenuState1 value matches 6 as @e[type=text_display,tag=tvSubtitle2,distance=..10] run data modify entity @s text set value ["",{text:" ",color:"white",italic:true}]

#update the shown item
execute if score #tvMenuState1 value matches 0 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head"]
execute if score #tvMenuState1 value matches 1 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head_ai_2"]
execute if score #tvMenuState1 value matches 2 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head_ai_3"]
execute if score #tvMenuState1 value matches 3 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head_ai_4"]
execute if score #tvMenuState1 value matches 4 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head_ai_5"]
execute if score #tvMenuState1 value matches 5 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with red_wool[item_model="gp/player_model/phantom_head_ai_6"]
execute if score #tvMenuState1 value matches 6 as @e[type=item_display,tag=tvDifficultyDisplay,distance=..10] run item replace entity @s contents with air

#sync up
scoreboard players operation #tvMenuState2 value = #tvMenuState1 value