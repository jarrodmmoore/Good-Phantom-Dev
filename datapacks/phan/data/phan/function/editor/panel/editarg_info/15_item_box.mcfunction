data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.item_box"}]'
execute if score @s editArg1 matches ..0 run tellraw @s ["",{"text":"(editArg1) cluster group: none","italic":true}]
execute if score @s editArg1 matches 1.. run tellraw @s ["",{"text":"(editArg1) cluster group: ","italic":true},{"score":{"name":"@s","objective":"editArg1"},"italic":true}]
tellraw @s ["",{"text":"(editArg2) player count requirement: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true}]