#10s digit is placement (#math)
#1s digit is difficulty (#math2)
scoreboard players operation #math value = #offerTrophy value
scoreboard players operation #math value /= #10 value
scoreboard players operation #math2 value = #offerTrophy value
scoreboard players operation #math2 value %= #10 value

#trophy
execute if score #math value matches ..1 run summon item_display ~ ~ ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:gold_block",count:1,components:{custom_model_data:1111113}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 2 run summon item_display ~ ~ ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:gold_block",count:1,components:{custom_model_data:1111112}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 3.. run summon item_display ~ ~ ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:gold_block",count:1,components:{custom_model_data:1111111}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

#difficulty marker
execute if score #math2 value matches ..1 run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111115}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
execute if score #math2 value matches 2 run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111116}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
execute if score #math2 value matches 3 run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111117}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
execute if score #math2 value matches 4 run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111118}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
execute if score #math2 value matches 5 run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111119}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
execute if score #math2 value matches 6.. run summon item_display ~ ~.2 ~ {Tags:["lobbyProp","rotateMe"],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111120}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.36f,0.36f,0.36f]}}
#i don't think a difficulty lvl 6 trophy will ever be obtainable, but it took literally 5 seconds to implement so why not LOL

#tp into place
execute as @e[type=item_display,tag=rotateMe] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[type=item_display,tag=rotateMe] remove rotateMe