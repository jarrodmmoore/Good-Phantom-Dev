scoreboard players set #tvMenuState1 value 1
scoreboard players set #tvMenuState2 value -99
scoreboard players set #tvAnimation value 0

#do a quick player count. if 2+ players, make exhibition the default
execute store result score #test value run execute if entity @a[tag=doneWithIntro]
execute if score #test value matches 2.. run scoreboard players set #tvMenuState1 value 0

#phantom racer text should go away and get deleted
execute as @e[type=text_display,distance=..7,tag=tvLogo] run function phan:phantom_racer/menu/class_select/remove_phantom_racer_text

#get rid of text from mode select
scoreboard players set @e[type=text_display,distance=..7,tag=tvText] lifespan 0
scoreboard players set @e[type=item_display,tag=tvTrackDisplay,distance=..10] lifespan 0
scoreboard players set @e[type=text_display,tag=tvTrackDisplay,distance=..10] lifespan 0
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/destroy_text_highlight

#get rid of stuff from cup select
scoreboard players set @e[type=item_display,distance=..7,tag=tvCupDisplay] lifespan 0

#special text for "choose a class"
summon text_display ~ ~1 ~1.5 {Tags:["lobbyProp","tvText","tvSubtitle1","tvProp"],alignment:"center",text:'["",{"translate":"gp.phantom_racer.choose_a_class","bold":true}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},background:16777215}

#display showing what level of bots we're facing
summon item_display ~.4 ~.35 ~1.5 {Tags:["lobbyProp","tvDifficultyDisplay","tvProp"],item_display:"head",item:{id:"red_wool",components:{"item_model":"gp/player_model/phantom_head"}},transformation:{translation:[0f,0f,0f],left_rotation:[0f,-0.902f,0f,0.432f],scale:[1f,1f,1f],right_rotation:[0.289f,0f,0f,0.957f]}}

#info text at the bottom
summon text_display ~ ~-0.55 ~1.5 {Tags:["lobbyProp","tvText","tvSubtitle2","tvProp"],alignment:"center",text:'["",{"text":" "}]',transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},background:16777215}
