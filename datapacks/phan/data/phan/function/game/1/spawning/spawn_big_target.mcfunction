#spawn the eye (which is an item display)
summon item_display ~ ~.5 ~ {Tags:["checkValid","setMe","bigTarget","shootable","groupB"],teleport_duration:1,billboard:"vertical",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/big_target_red"}}}

#glow in assist mode
execute if score #assist_navigation value matches 1.. run data merge entity @e[limit=1,tag=setMe,type=item_display,distance=..2] {Glowing:1b}

function phan:game/1/spawning/spawn__give_generic_data

tag @e[tag=setMe,type=item_display,distance=..2] remove setMe