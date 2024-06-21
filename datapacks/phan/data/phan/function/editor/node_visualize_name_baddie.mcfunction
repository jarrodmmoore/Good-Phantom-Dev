#show name
summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"baddie","color":"dark_red"}]'}

#show enemy type
execute if score @s editArg2 matches ..1 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[1] zombie","color":"white"}]'}
execute if score @s editArg2 matches 2 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[2] zombie knight","color":"white"}]'}
execute if score @s editArg2 matches 3 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[3] skeleton","color":"white"}]'}
execute if score @s editArg2 matches 4 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[4] vindicator","color":"white"}]'}
execute if score @s editArg2 matches 5 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[5] baby ghast","color":"white"}]'}
execute if score @s editArg2 matches 6 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[6] guardian","color":"white"}]'}
execute if score @s editArg2 matches 7 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[7] dispenser","color":"white"}]'}
execute if score @s editArg2 matches 8 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[8] iron golem","color":"white"}]'}
execute if score @s editArg2 matches 9 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[9] tnt yeeter","color":"white"}]'}
execute if score @s editArg2 matches 10 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[10] shulker","color":"white"}]'}
execute if score @s editArg2 matches 11 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[11] vex","color":"white"}]'}
execute if score @s editArg2 matches 12 positioned ~ ~-.22 ~ run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"[12] mine","color":"white"}]'}
