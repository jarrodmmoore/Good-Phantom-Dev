data modify storage phan:data display.node_name set value '["",{"translate":"gp.editor.node_type.stardust"}]'

execute unless score @s editArg1 matches 5 run tellraw @s ["",{"text":"(editArg1) type: single","italic":true}]
execute if score @s editArg1 matches 5 run tellraw @s ["",{"text":"(editArg1) type: 5-pack","italic":true}]
execute if score @s editArg2 matches ..0 run tellraw @s ["",{"text":"(editArg2) recursion: none","italic":true}]
execute if score @s editArg2 matches 1.. run tellraw @s ["",{"text":"(editArg2) recursion: ","italic":true},{"score":{"name":"@s","objective":"editArg2"},"italic":true},{"text":"x forward","italic":true}]
execute if score @s editArg3 matches ..1 run tellraw @s ["",{"text":"(editArg3) spacing: 1m","italic":true}]
execute if score @s editArg3 matches 2.. run tellraw @s ["",{"text":"(editArg3) spacing: ","italic":true},{"score":{"name":"@s","objective":"editArg3"},"italic":true},{"text":"m","italic":true}]