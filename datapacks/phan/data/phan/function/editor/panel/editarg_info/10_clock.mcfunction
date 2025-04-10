data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.clock"}]

execute unless score @s editArg1 matches 1 run tellraw @s ["",{text:"(editArg1) type: normal",italic:true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{text:"(editArg1) type: golden",italic:true}]