execute if score @s editArg3 matches 1 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.condition.on_ground","color":"red"}]'}
execute if score @s editArg3 matches 2 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.condition.in_water","color":"red"}]'}
execute if score @s editArg3 matches 3 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.condition.not_gliding","color":"red"}]'}
execute if score @s editArg3 matches 4 run summon area_effect_cloud ~ ~1 ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.condition.gliding","color":"red"}]'}

summon area_effect_cloud ~ ~ ~ {Duration:5,CustomNameVisible:1b,CustomName:'["",{"translate":"gp.editor.node_type.respawn_zone","color":"red"}]'}