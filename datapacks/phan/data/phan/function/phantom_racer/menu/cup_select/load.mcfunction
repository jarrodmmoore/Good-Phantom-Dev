scoreboard players set #tvMenuState1 value 1
scoreboard players set #tvMenuState3 value 0
scoreboard players set #tvMenuState2 value -99
scoreboard players set #tvMenuState4 value -99
scoreboard players set #tvAnimation value 0
scoreboard players set #tvLastOperation value 0

scoreboard players set #tvShowingCup value 0

#get rid of text from class or track select
scoreboard players set @e[type=text_display,distance=..7,tag=tvText] lifespan 0
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/destroy_text_highlight
execute as @e[type=item_display,tag=tvDifficultyDisplay,distance=..7] run scoreboard players set @s lifespan 0
scoreboard players set @e[type=marker,distance=..10,tag=tvTrackPreviewStop] lifespan 0

#special text for "choose a cup"
summon text_display ~ ~1.4 ~-.5 {Tags:["lobbyProp","tvText","tvSubtitle3","tvProp"],alignment:"center",text:'["",{"translate":"gp.phantom_racer.choose_a_cup","bold":true}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},background:16777215}

#special text to show cup name
summon text_display ~-.015 ~1.4 ~2.5 {Tags:["lobbyProp","tvText","tvSubtitle4","tvProp"],alignment:"center",text:'["",{"text":" "}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},background:16777215}
