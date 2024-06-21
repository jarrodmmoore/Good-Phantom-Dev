execute unless score @s editArg1 matches 0..5 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE <INVALID>","color":"green"}]'}

execute if score @s editArg1 matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 0","color":"green"}]'}
execute if score @s editArg1 matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 1","color":"green"}]'}
execute if score @s editArg1 matches 2 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 2","color":"green"}]'}
execute if score @s editArg1 matches 3 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 3","color":"green"}]'}
execute if score @s editArg1 matches 4 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 4","color":"green"}]'}
execute if score @s editArg1 matches 5 run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"LOADING ZONE 5","color":"green"}]'}
