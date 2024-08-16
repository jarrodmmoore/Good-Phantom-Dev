#clear any old trophies
scoreboard players set @e[type=item_display,tag=offerTrophy] lifespan 0
execute if score #math value matches 0 run scoreboard players set @e[type=text_display,tag=offerTrophy] lifespan 0

#create new trophy
execute if score #math value matches 1.. run summon item_display 209 -28 118 {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:gold_block",count:1,components:{custom_model_data:1111111}}}
execute if score #math value matches 1 positioned 209 -28 118 run summon item_display ~ ~.3 ~ {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111115}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 2 positioned 209 -28 118 run summon item_display ~ ~.3 ~ {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111116}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 3 positioned 209 -28 118 run summon item_display ~ ~.3 ~ {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111117}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 4 positioned 209 -28 118 run summon item_display ~ ~.3 ~ {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111118}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
execute if score #math value matches 5.. positioned 209 -28 118 run summon item_display ~ ~.3 ~ {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],item_display:"head",item:{id:"minecraft:light_blue_wool",count:1,components:{custom_model_data:1111119}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}

#text (if needed)
execute if score #offerTrophy value matches 0 if score #math value matches 1.. run summon text_display 209 -29 118 {Tags:["lobbyProp","offerTrophy"],Rotation:[90F,0F],line_width:1000,brightness:{sky:0,block:15},billboard:"fixed",background:16711680,text:'[{"translate":"gp.bot.go_for_a_trophy","bold":false,"color":"yellow"}]'}

#update stored trophy
scoreboard players operation #offerTrophy value = #math value