#one last particle...
execute if entity @s[tag=itemBoxSpawner] positioned ~ ~.5 ~ run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"8"}}} ~ ~ ~ 0 0 0 1 1

#https://youtu.be/BsSB96OEbZ8
summon item_display ~ ~.5 ~ {brightness:{sky:10,block:15},Tags:["checkValid","setMe","itemBox","groupA"],item:{id:"minecraft:red_wool",count:1b,components:{"custom_model_data":1111131}},start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.01f,0.01f,0.01f]}}

#get generic data
function phan:game/1/spawning/spawn__give_generic_data

#random start value for spin
execute as @e[tag=setMe] store result score @s bobTime run random value 0..40

#item box gets our boxID and groupID
execute if entity @s[tag=itemBoxSpawner] run scoreboard players operation @e[tag=setMe] boxID = @s boxID
execute if entity @s[tag=itemBoxSpawner] run scoreboard players operation @e[tag=setMe] editArg1 = @s editArg1
execute as @e[tag=setMe] if score @s editArg1 matches ..0 run function phan:game/4/spawning/item_box_random_cluster_group
scoreboard players set @e[tag=setMe] hitstun 15

#clean up tag
tag @e[tag=setMe] remove setMe

#node will wait for signal until it can spawn another one
execute if entity @s[tag=itemBoxSpawner] run scoreboard players set @s editArg3 -1