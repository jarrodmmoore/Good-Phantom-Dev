#=====

#low/high skill?
execute if entity @s[tag=eventBadSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"bad decision","color":"#BBBBBB"}]'}
execute if entity @s[tag=eventHighSkill] run summon area_effect_cloud ~ ~.33 ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"high skill","color":"#BBBBBB"}]'}

#=====

#1 = force jump
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches ..-1 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump at next ledge","color":"green"}]'}
execute if score @s AIBC_event matches 1 if score @s AIBC_modifier matches 1.. run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"force jump (delayed)","color":"green"}]'}

#2 = enter/cancel flight
execute if score @s AIBC_event matches 2 unless score @s AIBC_modifier matches 1..3 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight (spam jump key)","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"enter flight at next ledge","color":"green"}]'}
execute if score @s AIBC_event matches 2 if score @s AIBC_modifier matches 3 run summon area_effect_cloud ~ ~ ~ {Duration:41,CustomNameVisible:1b,CustomName:'["",{"text":"cancel flight","color":"green"}]'}

#...

#9 = throw ender pearl
execute if score @s AIBC_event matches 9 run summon item_display ~ ~ ~ {Tags:["setMe"],item_display:head,billboard:vertical,brightness:{sky:0,block:15},item:{id:"minecraft:ender_pearl",count:1b}}

#=====

#generic lifespan set for item displays
scoreboard players set @e[tag=setMe,type=item_display] lifespan 41
tag @e[tag=setMe,type=item_display] remove setMe