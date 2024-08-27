#summon the thing
execute if score #editArg1 value matches ..0 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111111}}}
execute if score #editArg1 value matches ..0 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111111}}}

execute if score #editArg1 value matches 1 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111112}}}
execute if score #editArg1 value matches 1 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111112}}}

execute if score #editArg1 value matches 2 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111113}}}
execute if score #editArg1 value matches 2 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111113}}}

execute if score #editArg1 value matches 3.. if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111114}}}
execute if score #editArg1 value matches 3.. if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"custom_model_data":2111114}}}

#rotate it properly, and get rid of tag
execute as @e[tag=setMe] at @s run function phan:editor/spawn/arrow_sign_setup