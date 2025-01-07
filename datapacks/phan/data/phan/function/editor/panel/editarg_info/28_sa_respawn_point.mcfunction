data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.sa_respawn_point"}]'

execute if score @s editLoadArea matches 0..5 run tellraw @s ["",{"text":"(editLoadArea) affects players in load area ","italic":true},{"score":{"name":"@s","objective":"editLoadArea"}}]
execute unless score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) launch upward upon respawn: no","italic":true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) launch upward upon respawn: yes","italic":true}]