#executed by podiumData area_effect_cloud

#editArg1 -- 1=1st, 2=2nd, 3=3rd
#editArg2 -- 1=human, 2=bot
#editArg3 -- bot skill level (if applicable)

#summon skeleton who will represent a player
summon skeleton ~ ~ ~ {Tags:["setLife","podiumPuppet","needSpread"],NoAI:true,Invulnerable:true,ArmorItems:[{},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":16777215}},{id:"minecraft:elytra",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:light_blue_wool",count:1,components:{"minecraft:custom_model_data":1111111}}],ArmorDropChances:[0.085F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:9999999,show_particles:0b}]}

#1st place human gets a crown! yay
execute if entity @s[scores={editArg1=1,editArg2=1}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111113]

#bots have their special head model
execute if entity @s[scores={editArg2=2,editArg3=..1}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111115]
execute if entity @s[scores={editArg2=2,editArg3=2}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111116]
execute if entity @s[scores={editArg2=2,editArg3=3}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111117]
execute if entity @s[scores={editArg2=2,editArg3=4}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111118]
execute if entity @s[scores={editArg2=2,editArg3=5}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111119]
execute if entity @s[scores={editArg2=2,editArg3=6..}] as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111120]

#put the correct trophy in the bot's hand
execute if score @s editArg1 matches 1 as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s weapon.mainhand with gold_block[custom_model_data=1111111]
execute if score @s editArg1 matches 2 as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s weapon.mainhand with gold_block[custom_model_data=1111112]
execute if score @s editArg1 matches 3 as @e[tag=setLife,type=skeleton,distance=..10] run item replace entity @s weapon.mainhand with gold_block[custom_model_data=1111113]

#teleport the bot into place!
execute as @e[tag=setLife,type=skeleton,distance=..10] at @s if block ~2 ~1 ~2 #phan:not_solid run tp @s ~-.5 ~ ~-.5
execute if score @s editArg1 matches 3.. as @e[tag=setLife,type=skeleton,distance=..10] at @s run tp @s ~ ~2 ~ facing entity @e[limit=1,sort=nearest,type=armor_stand,tag=podiumPlayerCamera] eyes
execute if score @s editArg1 matches 2 as @e[tag=setLife,type=skeleton,distance=..10] at @s run tp @s ~ ~3 ~ facing entity @e[limit=1,sort=nearest,type=armor_stand,tag=podiumPlayerCamera] eyes
execute if score @s editArg1 matches ..1 as @e[tag=setLife,type=skeleton,distance=..10] at @s run tp @s ~ ~4 ~ facing entity @e[limit=1,sort=nearest,type=armor_stand,tag=podiumPlayerCamera] eyes

#puppet is temporary & kept alive while sequence runs
scoreboard players set @e[tag=setLife,type=skeleton,distance=..10] lifespan 10

#puppet gets our name
data modify entity @e[tag=setLife,type=skeleton,distance=..10,limit=1] CustomName set from entity @s CustomName
data merge entity @e[tag=setLife,type=skeleton,distance=..10,limit=1] {CustomNameVisible:1b}

#clear tags
tag @e[tag=setLife,type=skeleton,distance=..10] remove setLife


#we did it, comrades
scoreboard players set #success value 1