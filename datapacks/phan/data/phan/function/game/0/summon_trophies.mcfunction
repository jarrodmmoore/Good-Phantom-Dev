#pastel palace
scoreboard players operation #offerTrophy value = #dream1Trophy value
execute if score #offerTrophy value matches 1.. positioned 207 0 139 positioned ~ ~.3 ~ rotated 0 0 run function phan:game/0/summon_trophy_prop

#moonlit mountains
scoreboard players operation #offerTrophy value = #dream2Trophy value
execute if score #offerTrophy value matches 1.. positioned 207 0 97 positioned ~ ~.3 ~ rotated 15 0 run function phan:game/0/summon_trophy_prop

#shattered city
scoreboard players operation #offerTrophy value = #dream3Trophy value
execute if score #offerTrophy value matches 1.. positioned 216 0 115 positioned ~ ~.3 ~.4 rotated 95 0 run function phan:game/0/summon_trophy_prop

#neon nightway
scoreboard players operation #offerTrophy value = #dream4Trophy value
execute if score #offerTrophy value matches 1.. positioned 206 -6 134 positioned ~ ~.3 ~ rotated 30 0 run function phan:game/0/summon_trophy_prop

#deep dive
scoreboard players operation #offerTrophy value = #dream5Trophy value
execute if score #offerTrophy value matches 1.. positioned 205 -6 104 positioned ~ ~.3 ~ rotated -20 0 run function phan:game/0/summon_trophy_prop




#wood cup
scoreboard players operation #offerTrophy value = #grandPrix1Trophy value
execute if score #offerTrophy value matches 1.. positioned 246 -7 125 positioned ~ ~.8 ~.5 rotated -90 0 run function phan:game/0/summon_trophy_prop
execute if score #cup1Completed value matches 1.. positioned 246 -8 125 positioned ~ ~.25 ~.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{item_model:"oak_planks"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

#stone cup
scoreboard players operation #offerTrophy value = #grandPrix2Trophy value
execute if score #offerTrophy value matches 1.. positioned 246 -7 126 positioned ~ ~.8 ~.5 rotated -90 0 run function phan:game/0/summon_trophy_prop
execute if score #cup2Completed value matches 1.. positioned 246 -8 126 positioned ~ ~.25 ~.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{item_model:"cobblestone"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

#wood cup
scoreboard players operation #offerTrophy value = #grandPrix3Trophy value
execute if score #offerTrophy value matches 1.. positioned 246 -7 127 positioned ~ ~.8 ~.5 rotated -90 0 run function phan:game/0/summon_trophy_prop
execute if score #cup3Completed value matches 1.. positioned 246 -8 127 positioned ~ ~.25 ~.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{item_model:"iron_block"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

#wood cup
scoreboard players operation #offerTrophy value = #grandPrix4Trophy value
execute if score #offerTrophy value matches 1.. positioned 246 -7 128 positioned ~ ~.8 ~.5 rotated -90 0 run function phan:game/0/summon_trophy_prop
execute if score #cup4Completed value matches 1.. positioned 246 -8 128 positioned ~ ~.25 ~.5 run summon item_display ~ ~ ~ {Tags:["lobbyProp"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{item_model:"diamond_block"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

