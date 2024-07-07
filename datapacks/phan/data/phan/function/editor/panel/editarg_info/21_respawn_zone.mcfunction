data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.respawn_zone"}]'
execute unless score @s editArg1 matches 1..4 run tellraw @s ["",{"text":"(editArg1) condition: none","italic":true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{"text":"(editArg1) condition: on ground","italic":true}]
execute if score @s editArg1 matches 2 run tellraw @s ["",{"text":"(editArg1) condition: in water","italic":true}]
execute if score @s editArg1 matches 3 run tellraw @s ["",{"text":"(editArg1) condition: not gliding","italic":true}]
execute if score @s editArg1 matches 4 run tellraw @s ["",{"text":"(editArg1) condition: gliding","italic":true}]
