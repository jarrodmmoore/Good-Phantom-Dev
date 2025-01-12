scoreboard players set #tvMenuState1 value 0
scoreboard players set #tvMenuState2 value 1
scoreboard players set #tvAnimation value 0
scoreboard players set #tvInputJumpImpulse value 0

#summon phantom racer text if it doesn't already exist
execute unless entity @e[type=text_display,tag=tvLogo,distance=..7] run summon text_display ~ ~-2 ~-2 {Tags:["lobbyProp","tvLogo","tvProp"],alignment:"center",text:'["",{"text":"\\uE044\\uF001\\uE045"}]',start_interpolation:-1,teleport_duration:10,interpolation_duration:10,transformation:{left_rotation:[0.0f,-0.707f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]},background:16711680}
execute as @e[type=text_display,distance=..7,tag=tvLogo] run data merge entity @s {teleport_duration:10}

#"press start" text goes away soon
execute as @e[type=text_display,tag=tvPressStart,distance=..7] run scoreboard players set @s lifespan 10
execute as @e[type=item_display,tag=tvDifficultyDisplay,distance=..7] run scoreboard players set @s lifespan 0

#get rid of text from other menus
scoreboard players set @e[type=text_display,distance=..7,tag=tvText] lifespan 0
execute as @e[type=item_display,tag=tvTextHighlight,distance=..10] run function phan:phantom_racer/menu/destroy_text_highlight


#unlock the first cup's levels for free, so players have at least a few levels open in Free Play
scoreboard players set #d6a1Unlocked value 1
scoreboard players set #d1a1Unlocked value 1
scoreboard players set #d4a1Unlocked value 1
scoreboard players set #d2a1Unlocked value 1
scoreboard players set #d5a2Unlocked value 1