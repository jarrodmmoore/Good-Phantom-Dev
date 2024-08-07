data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.podium_spawner"}]'

execute unless score @s editArg1 matches 1..3 run tellraw @s ["",{"text":"(editArg1) place: INVALID","italic":true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) place: 1st (gold)","italic":true}]
execute if score @s editArg1 matches 2 run tellraw @s ["",{"text":"(editArg1) place: 2nd (silver)","italic":true}]
execute if score @s editArg1 matches 3 run tellraw @s ["",{"text":"(editArg1) place: 3rd (bronze)","italic":true}]

execute unless score @s editArg2 matches 1 run tellraw @s ["",{"text":"(editArg2) size: 4x4","italic":true}]
execute if score @s editArg2 matches 1 run tellraw @s ["",{"text":"(editArg2) size: 5x5","italic":true}]