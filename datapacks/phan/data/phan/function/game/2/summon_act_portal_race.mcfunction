#arguments:
#(level_id)
#(act)

#platform
fill ~ ~ ~ ~2 ~ ~2 magenta_concrete

#summon item
$execute positioned ~1 ~1 ~1 run summon item ~ ~ ~ {Tags:["stay","lobbyProp","actSelect"],PickupDelay:40,Age:-32768,NoGravity:1b,Item:{id:"minecraft:sea_lantern",count:1,components:{"minecraft:custom_name":'{"text":" ","color":"white","italic":false}',"item_model":"gp/object/soul","minecraft:hide_additional_tooltip":{},"minecraft:custom_data":{needsCleared:1b,actSelectItem:$(act)}}}}

#summon item display showing preview
data modify storage phan:level_index rotation set value -90
execute positioned ~1 ~2.4 ~1 run function phan:level_manager/load/summon_act_preview_portal_race with storage phan:level_index

#summon name text
$execute positioned ~-1 ~ ~1 run summon text_display ~ ~-10 ~ {Tags:["lobbyProp","rotateMe"],billboard:"fixed",alignment:"center",text:'[{"nbt":"act_name","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false}]'}
execute as @e[type=text_display,tag=rotateMe] at @s run tp @s ~.4 ~10.45 ~ 90 ~
tag @e[type=text_display,tag=rotateMe] remove rotateMe

#count up act pointer
scoreboard players add #math2 value 1
function phan:game/2/skip_over_missing_acts
execute store result storage phan:level_index act int 1 run scoreboard players get #math2 value