#this is how we trick the client into rendering these things properly
scoreboard players add @s age 1
execute if score @s age matches 4 unless entity @s[tag=soulVisualsReduced] run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..100]
execute if score @s age matches 5 unless entity @s[tag=soulVisualsReduced] run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..100]
execute if score @s age matches 5 run tag @s remove soulNeedsInterp

#summon a fancy after image?
#execute if score @s age matches 4 if loaded ~ ~ ~ run summon item_display ~ ~.2 ~ {Tags:["setlife"],billboard:"fixed",item_display:"head",brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:red_wool",components:{"item_model":"gp/object/soul_after_image"}}}
execute if score @s age matches 5 if entity @s[tag=summonAfterImages] if loaded ~ ~ ~ run summon armor_stand ~ ~-1.7 ~ {Tags:["setlife"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/soul_after_image"}}]}
execute if score @s age matches 5 run scoreboard players set @e[tag=setlife] lifespan 3
execute if score @s age matches 5 run tag @e[tag=setlife] remove setlife
#execute if score @s age matches 4 run data merge entity @s {item:{id:"minecraft:red_wool",count:1b,components:{"item_model":"gp/object/soul_border"}},start_interpolation:0,interpolation_duration:0,transformation:{scale:[0.4f,0.4f,0.4f]}}
#execute if score @s age matches 5 run data merge entity @s {start_interpolation:0,interpolation_duration:4,transformation:{scale:[0.0f,0.0f,0.0f]}}
#execute if score @s age matches 5 run tag @s remove soulNeedsInterp