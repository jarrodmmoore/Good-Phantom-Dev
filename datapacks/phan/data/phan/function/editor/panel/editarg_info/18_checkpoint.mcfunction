data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.checkpoint"}]'
tellraw @s ["",{"text":"(editArg1) checkpoint number: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
execute if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg2) optional/invisible checkpoint: no","italic":true}]
execute unless score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg2) optional/invisible checkpoint: yes","italic":true}]
execute if score @s editArg3 matches 0.. if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg3) gives ever eyes: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true}]
execute if score @s editArg3 matches ..-1 if score @s editArg2 matches 0 run tellraw @s ["",{"text":"(editArg3) silent checkpoint! no sound effects.","italic":true}]