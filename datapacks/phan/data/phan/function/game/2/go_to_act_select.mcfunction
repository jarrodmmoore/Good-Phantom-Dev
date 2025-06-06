#act select mode
scoreboard players set #subGameState value 2

#sound
execute as @a[tag=doneWithIntro] at @s run function phan:common/playsound_positionless_macro {sound:"minecraft:block.beacon.activate",targets:"@s",pitch:"1.9",volume:"1"}

#feedback
title @a[tag=doneWithIntro] actionbar [""]
title @s[tag=sneaking] actionbar ["",{translate:"gp.lobby.ok",italic:true}]

#remember which gamemode we want to play once we hit team select
$scoreboard players set #desiredGamemode value $(desired_gamemode)

#check player count. if there's more than 2, send to team select.
execute store result score #teamSelectTest value run execute if entity @a[tag=doneWithIntro]
execute if entity @s[tag=debugMultiplayer] run scoreboard players set #teamSelectTest value 2
#multiplayer: snitch on who did this
execute if score #desiredGamemode value matches 1 if entity @s[type=player] if score #teamSelectTest value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.selected_mode",color:"white",with:[{translate:"gp.mode_select.score_attack",color:"yellow"}]}]
execute if score #desiredGamemode value matches 2 if entity @s[type=player] if score #teamSelectTest value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.selected_mode",color:"white",with:[{translate:"gp.mode_select.time_attack",color:"red"}]}]
execute if score #desiredGamemode value matches 3 if entity @s[type=player] if score #teamSelectTest value matches 2.. run tellraw @a[tag=doneWithIntro] ["",{text:"(",color:"gray"},{selector:"@s",color:"gray"},{text:")",color:"gray"},{text:" "},{translate:"gp.selected_mode",color:"white",with:[{translate:"gp.mode_select.versus",color:"light_purple"}]}]

#reset all props and inventory items
kill @e[tag=lobbyProp]
clear @a red_wool
clear @a yellow_wool

#bossbar
bossbar set general_bossbar color purple
bossbar set general_bossbar style progress
bossbar set general_bossbar max 1
bossbar set general_bossbar value 1
bossbar set general_bossbar name ["",{translate:"gp.mode_select.select_a_level",color:"white",bold:false}]

#teleport players into the place
#effect give @a[tag=doneWithIntro] blindness 1 50 true
execute as @a[tag=doneWithIntro] positioned 198 -22 118 rotated -90 0 run function phan:common/varied_teleport

#summon level text
execute store result storage phan:level_index level_id int 1 run scoreboard players get #chosenLevel value
execute positioned 209 -18 118 run function phan:levels/_index_title_entity with storage phan:level_index

#clear any extra remaining platforms
fill 203 -22 111 205 -22 125 air
fill 206 -22 112 206 -22 124 air
fill 207 -22 117 209 -22 119 air

#summon our level options
execute if score #desiredGamemode value matches 1..2 run function phan:game/2/summon_selectable_acts_score_attack with storage phan:level_index
execute if score #desiredGamemode value matches 3 run function phan:game/2/summon_selectable_acts_portal_race with storage phan:level_index

#return to cabin
summon item 191 -21 118 {Tags:["stay","lobbyProp","modeSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:ender_pearl",count:1,components:{"minecraft:custom_name":{translate:"gp.mode_select.return_to_cabin",color:"dark_green",italic:false},"minecraft:custom_data":{modeSelectCabin:1b}}}}
execute positioned 191 -20 118 positioned ~ ~.15 ~ run summon text_display ~ ~ ~ {Tags:["lobbyProp"],alignment:"center",see_through:1b,line_width:1000,billboard:"center",brightness:{sky:0,block:15},text:[{translate:"gp.mode_select.return_to_cabin",bold:true,color:"#964B33"}]}
