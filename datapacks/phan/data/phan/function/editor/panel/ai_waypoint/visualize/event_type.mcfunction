#=====

#low/high skill?
execute if entity @s[tag=eventBadSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"bad decision","color":"#BBBBBB"}]'}
execute if entity @s[tag=eventHighSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"high skill","color":"#BBBBBB"}]'}

#=====

#1 = force jump
execute if score @s AIBC_event matches 1 unless score @s AIBC_modifier matches 1..2 run summon area_effect_cloud ~ ~ ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"force jump","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"force jump, enter flight","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"force jump (spam key), enter flight","color":"green"}]'}

#2 = enter/cancel flight
execute if score @s AIBC_event matches 2 unless score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:40,CustomNameVisible:1b,CustomName:'["",{"text":"cancel flight","color":"green"}]'}

#...

#9 = throw ender pearl
execute if score @s AIBC_event matches 9 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:"head",brightness:{sky:0,block:15},item:{id:"minecraft:ender_pearl",count:1b}}

#=====

#generic lifespan set for item displays
scoreboard players set @e[tag=setMe,type=item_display] lifespan 20
tag @e[tag=setMe,type=item_display] remove setMe