#this is how we trick the client into rendering these things properly
scoreboard players add @s age 1
execute if score @s age matches 4 unless entity @s[tag=soulVisualsReduced] run particle end_rod ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..100]
execute if score @s age matches 5 unless entity @s[tag=soulVisualsReduced] run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..100]
execute if score @s age matches 5 run tag @s remove soulNeedsInterp

#summon a fancy after image?
execute if score @s age matches 5 if entity @s[tag=summonAfterImages] if loaded ~ ~ ~ run summon armor_stand ~ ~-1.7 ~ {Tags:["setlife"],Marker:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:red_wool",count:1,components:{"item_model":"gp/object/soul_after_image"}}}}
execute if score @s age matches 5 run scoreboard players set @e[tag=setlife,type=armor_stand,distance=..3] lifespan 3
execute if score @s age matches 5 run tag @e[tag=setlife,type=armor_stand,distance=..3] remove setlife