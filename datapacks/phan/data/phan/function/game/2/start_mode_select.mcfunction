#bossbar
bossbar set general_bossbar color purple
bossbar set general_bossbar style progress
bossbar set general_bossbar max 1
bossbar set general_bossbar value 1
bossbar set general_bossbar name ["",{translate:"gp.mode_select.select_a_mode",color:"white",bold:false}]

#teleport players into the place
effect give @a[tag=doneWithIntro] blindness 1 50 true
execute as @a[tag=doneWithIntro] positioned 198 -22 118 rotated -90 0 run function phan:common/varied_teleport

#summon level text
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute positioned 209 -18 118 run function phan:levels/_index_title_entity with storage phan:level_index

#determine which game types we should offer
scoreboard players set #spawnScoreAttack value 0
scoreboard players set #spawnTimeAttack value 0
scoreboard players set #spawnPortalRace value 0
function phan:level_manager/load/check_for_selectable_gamemodes with storage phan:level_index
execute if score #spawnScoreAttack value matches 1 if score #timeAttackUnlocked value matches 1 run scoreboard players set #spawnTimeAttack value 1

#quick: count how many players are online!
execute store result score #math value run execute if entity @a

#clear any extra remaining platforms
fill 203 -22 111 205 -22 125 air
fill 206 -22 112 206 -22 124 air
fill 207 -22 117 209 -22 119 air

#score attack
execute if score #spawnScoreAttack value matches 1 run fill 204 -22 112 206 -22 114 yellow_concrete
execute if score #spawnScoreAttack value matches 1 run summon item 205 -21 113 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.score_attack",color:"yellow",italic:false},"item_model":"gp/object/stardust","minecraft:custom_data":{modeSelectScore:1b}}}}
execute if score #spawnScoreAttack value matches 1 if score #math value matches ..1 positioned 205 -20 113 positioned ~ ~.4 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.score_attack",bold:true,color:"yellow"},{text:"\n"},{translate:"gp.mode_select.1_to_3_players",bold:false,color:"gray"}]}
execute if score #spawnScoreAttack value matches 1 if score #math value matches 2.. positioned 205 -20 113 positioned ~ ~.4 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.score_attack",bold:true,color:"yellow"},{text:"\n"},{translate:"gp.mode_select.1_to_3_players",bold:false,color:"gray"},{text:"\n"},{translate:"gp.mode_select.play_separately",bold:false,color:"gray"}]}

#time attack
execute if score #spawnTimeAttack value matches 1 run fill 207 -22 117 209 -22 119 red_concrete
execute if score #spawnTimeAttack value matches 1 run summon item 208 -21 118 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.time_attack",color:"red",italic:false},"item_model":"gp/object/alarm_clock","minecraft:custom_data":{modeSelectTime:1b}}}}
execute if score #spawnTimeAttack value matches 1 positioned 208 -20 118 positioned ~ ~.4 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.time_attack",bold:true,color:"red"},{text:"\n"},{translate:"gp.mode_select.1_player",bold:false,color:"gray"}]}

#versus
execute if score #spawnPortalRace value matches 1 run fill 204 -22 122 206 -22 124 magenta_concrete
execute if score #spawnPortalRace value matches 1 run summon item 205 -21 123 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.versus",color:"light_purple",italic:false},"item_model":"gp/object/phantom_chest","minecraft:custom_data":{modeSelectVersus:1b}}}}
execute if score #spawnPortalRace value matches 1 if score #math value matches ..1 positioned 205 -20 123 positioned ~ ~.4 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.versus",bold:true,color:"light_purple"},{text:"\n"},{translate:"gp.mode_select.1_to_24_players_bots",bold:false,color:"gray"}]}
execute if score #spawnPortalRace value matches 1 if score #math value matches 2.. positioned 205 -20 123 positioned ~ ~.4 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.versus",bold:true,color:"light_purple"},{text:"\n"},{translate:"gp.mode_select.1_to_24_players",bold:false,color:"gray"},{text:"\n"},{translate:"gp.mode_select.play_together",bold:false,color:"gray"}]}

#return to cabin
summon item 191 -21 118 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.return_to_cabin",color:"dark_green",italic:false},"minecraft:custom_data":{modeSelectCabin:1b}}}}
execute positioned 191 -20 118 positioned ~ ~.15 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.return_to_cabin",bold:true,color:"#964B33"}]}
