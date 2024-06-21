execute if score @s editArg3 matches 1 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"on ground","color":"red"}]'}
execute if score @s editArg3 matches 2 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"in water","color":"red"}]'}
execute if score @s editArg3 matches 3 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"not gliding","color":"red"}]'}
execute if score @s editArg3 matches 4 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"gliding","color":"red"}]'}

$execute if entity @s[scores={editArg1=0..,editArg2=0..}] run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"(VS) RESPAWN ZONE ($(reset_check_min)..$(reset_check_max))","color":"red"}]'}
$execute if entity @s[scores={editArg1=0..,editArg2=..-1}] run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"(VS) RESPAWN ZONE ($(reset_check_min)..)","color":"red"}]'}
$execute if entity @s[scores={editArg1=..-1,editArg2=0..}] run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"(VS) RESPAWN ZONE (..$(reset_check_max))","color":"red"}]'}
execute if entity @s[scores={editArg1=..-1,editArg2=..-1}] run summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"text":"(VS) RESPAWN ZONE","color":"red"}]'}