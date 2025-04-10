data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.effect_sign"}]

execute if score @s editArg1 matches ..0 run tellraw @s ["",{text:"(editArg1) sign: jump boost",italic:true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{text:"(editArg1) sign: magic refill",italic:true}]
execute if score @s editArg1 matches 2 run tellraw @s ["",{text:"(editArg1) sign: teleport",italic:true}]
execute if score @s editArg1 matches 3.. run tellraw @s ["",{text:"(editArg1) sign: strength",italic:true}]

execute if score @s editArg2 matches ..0 run tellraw @s ["",{text:"(editArg2) billboard: fixed",italic:true}]
execute if score @s editArg2 matches 1.. run tellraw @s ["",{text:"(editArg2) billboard: vertical",italic:true}]
