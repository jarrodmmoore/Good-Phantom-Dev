execute if score @s editNode matches 1 run summon item_display ~ ~1.6 ~ {Tags:["checkValid","setMe","groupA","ring","ringBig"],billboard:"fixed",item_display:"head",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111116}}}
execute if score @s editNode matches 2 run summon item_display ~ ~1.6 ~ {Tags:["checkValid","setMe","groupA","ring","ringLittle"],billboard:"fixed",item_display:"head",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111117}}}
execute if score @s editNode matches 3 run summon item_display ~ ~1.6 ~ {Tags:["checkValid","setMe","groupA","ring","ringBig","ringBoost"],billboard:"fixed",item_display:"head",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111118}}}
execute if score @s editNode matches 4 run summon item_display ~ ~1.6 ~ {Tags:["checkValid","setMe","groupA","ring","ringLittle","ringBoost"],billboard:"fixed",item_display:"head",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111119}}}

function phan:game/1/spawning/spawn__ring_rotate
function phan:game/1/spawning/spawn__give_generic_data
execute if score #gameState value matches 4 as @e[tag=setMe,limit=1,type=item_display] run function phan:game/1/spawning/ring_get_id
tag @e[tag=setMe] remove setMe