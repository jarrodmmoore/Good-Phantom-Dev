execute if score @s editArg1 matches 1 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"on ground","color":"red"}]'}
execute if score @s editArg1 matches 2 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"in water","color":"red"}]'}
execute if score @s editArg1 matches 3 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"not gliding","color":"red"}]'}
execute if score @s editArg1 matches 4 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"gliding","color":"red"}]'}

summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"RESPAWN ZONE","color":"red"}]'}