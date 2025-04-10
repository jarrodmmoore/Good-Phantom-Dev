#set subGameState so we know what to do with the game loop and mid-game player joins
scoreboard players set #subGameState value 1

#get ready to show a possible trophy
scoreboard players set #offerTrophy value 0

#sound
execute as @a[tag=doneWithIntro] at @s run playsound minecraft:block.beacon.activate master @s ~ 100000 ~ 100000 1.9

#reset all props and inventory items
kill @e[tag=lobbyProp]
clear @a red_wool
clear @a yellow_wool
clear @a *[custom_data~{needsCleared:1b}]

#reset previous team requests
scoreboard players set @a teamRequest 0

#setup timer
scoreboard players set #timeUntilStart value 200

#bossbar
bossbar set general_bossbar color white
bossbar set general_bossbar style progress
bossbar set general_bossbar max 200
bossbar set general_bossbar value 200
bossbar set general_bossbar name ["",{translate:"gp.mode_select.play_or_spectate",color:"white",bold:false}]

#summon level text
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute unless score #grandPrixActive value matches 1.. positioned 209 -26 118 run function phan:levels/_index_title_entity with storage phan:level_index
execute if score #grandPrixActive value matches 1.. positioned 209 -26 118 positioned ~ ~1 ~ run function phan:level_manager/load/spawn_name_display {level_uid:1,rotation:90,offset_x:'.0',offset_y:'.6',offset_z:'.0'}
execute if score #grandPrixActive value matches 1.. as @e[type=text_display,tag=lobbyNameDisplay1] run data merge entity @s {text:{text:"\uE398"}}

#summon act text (if applicable)
execute store result storage phan:level_index act int 1 run scoreboard players get #showActNumber value
execute if score #showActNumber value matches 1.. if score #desiredGamemode value matches 1..2 positioned 209 -27 118 run function phan:levels/_index_act_title_entity_score_attack with storage phan:level_index
execute unless score #grandPrixActive value matches 1.. if score #showActNumber value matches 1.. if score #desiredGamemode value matches 3 positioned 209 -27 118 run function phan:levels/_index_act_title_entity with storage phan:level_index
execute if score #grandPrixActive value matches 1.. store result storage phan:level_index level_id int 1 run scoreboard players get #grandPrixActive value
#in grand prix, show the name of the cup
execute if score #grandPrixActive value matches 1.. if score #desiredGamemode value matches 3 positioned 209 -27 118 positioned ~ ~-.5 ~ run function phan:game/2/summon_grand_prix_name with storage phan:level_index

#summon gamemode text
execute if score #desiredGamemode value matches 1 positioned 209 -18 118 positioned ~ ~-59.5 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:[{translate:"gp.mode_select.score_attack",bold:true,color:"yellow"},{text:"\n"},{translate:"gp.mode_select.1_to_3_players",bold:false,color:"gray"}]}
execute if score #desiredGamemode value matches 2 positioned 209 -18 118 positioned ~ ~-59.5 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:[{translate:"gp.mode_select.time_attack",bold:true,color:"red"},{text:"\n"},{translate:"gp.mode_select.1_player",bold:false,color:"gray"}]}
execute unless score #grandPrixActive value matches 1.. if score #desiredGamemode value matches 3 positioned 209 -18 118 positioned ~ ~-59.5 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp","rotateText"],alignment:"center",line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:[{translate:"gp.mode_select.versus",bold:true,color:"light_purple"},{text:"\n"},{translate:"gp.mode_select.1_to_24_players",bold:false,color:"gray"}]}
#rotate it
execute as @e[type=text_display,tag=rotateText] at @s run tp @s ~ ~50.4 ~ 90 ~
tag @e[tag=rotateText,type=text_display] remove rotateText

#stop spectating admin if they exist
execute if score #forceSpecAdmin value matches 1 positioned 198 -30 118 run function phan:game/2/force_spectate_admin_exit

#teleport players into the place
effect give @a[tag=doneWithIntro] blindness 1 50 true
execute as @a[tag=doneWithIntro] positioned 198 -30 118 rotated -90 0 run function phan:common/varied_teleport

#play text
execute positioned 205 -28 113 positioned ~ ~.8 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.play",bold:true,color:"dark_aqua"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

#spectate text
execute positioned 205 -28 123 positioned ~ ~.8 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.spectate",bold:true,color:"dark_purple"}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

#return to cabin
summon item 191 -29 118 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.return_to_cabin",color:"dark_green",italic:false},"minecraft:custom_data":{modeSelectCabin:1b}}}}
execute positioned 191 -28 118 positioned ~ ~.15 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.return_to_cabin",bold:true,color:"#964B33"}]}
