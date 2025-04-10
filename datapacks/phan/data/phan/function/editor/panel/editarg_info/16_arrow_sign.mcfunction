data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.arrow_sign"}]

execute if score @s editArg1 matches ..0 run tellraw @s ["",{text:"(editArg1) arrow color: purple",italic:true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{text:"(editArg1) arrow color: teal",italic:true}]
execute if score @s editArg1 matches 2 run tellraw @s ["",{text:"(editArg1) arrow color: crimson",italic:true}]
execute if score @s editArg1 matches 3 run tellraw @s ["",{text:"(editArg1) arrow color: yellow",italic:true}]
execute if score @s editArg1 matches 4.. run tellraw @s ["",{text:"(editArg1) arrow color: blue",italic:true}]

execute if score @s editArg2 matches ..0 run tellraw @s ["",{text:"(editArg2) icon: portal frame",italic:true}]
execute if score @s editArg2 matches 1 run tellraw @s ["",{text:"(editArg2) icon: ever eye",italic:true}]
execute if score @s editArg2 matches 2 run tellraw @s ["",{text:"(editArg2) icon: stardust",italic:true}]
execute if score @s editArg2 matches 3.. run tellraw @s ["",{text:"(editArg2) icon: timer",italic:true}]
