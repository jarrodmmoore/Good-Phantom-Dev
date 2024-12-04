#summon the thing
execute if score #editArg1 value matches ..0 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/jump"}}}
execute if score #editArg1 value matches ..0 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/jump"}}}

execute if score #editArg1 value matches 1 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/refill"}}}
execute if score #editArg1 value matches 1 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/refill"}}}

execute if score #editArg1 value matches 2 if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/teleport"}}}
execute if score #editArg1 value matches 2 if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/teleport"}}}

execute if score #editArg1 value matches 3.. if score #editArg2 value matches ..0 run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"fixed",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/strength"}}}
execute if score #editArg1 value matches 3.. if score #editArg2 value matches 1.. run summon item_display ~ ~1 ~ {Tags:["node","arrowSign","setMe","newModelFormat"],item_display:"head",billboard:"vertical",brightness:{sky:0,block:15},item:{id:"minecraft:white_dye",count:1b,components:{"item_model":"gp/effect_sign/strength"}}}

#rotate it properly, and get rid of tag
execute as @e[tag=setMe] at @s run function phan:editor/spawn/arrow_sign_setup