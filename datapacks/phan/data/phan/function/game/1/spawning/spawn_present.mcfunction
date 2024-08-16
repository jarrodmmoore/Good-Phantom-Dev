summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","present","groupB"],billboard:"vertical",brightness:{sky:0,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111111}}}

function phan:game/1/spawning/spawn__give_generic_data

#inherit values from node
scoreboard players operation @e[tag=setMe,type=item_display,distance=..2] editArg1 = @s editArg1
scoreboard players operation @e[tag=setMe,type=item_display,distance=..2] editArg2 = @s editArg2
scoreboard players operation @e[tag=setMe,type=item_display,distance=..2] editArg3 = @s editArg3
tag @e[tag=setMe,type=item_display,distance=..2] remove setMe