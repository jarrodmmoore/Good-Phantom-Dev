data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.present"}]
#--contains
execute unless score @s editArg1 matches 1..8 run tellraw @s ["",{text:"(editArg1) contains: nothing",italic:true}]
execute if score @s editArg1 matches 1 run tellraw @s ["",{text:"(editArg1) contains: 15 stardust",italic:true}]
execute if score @s editArg1 matches 2 run tellraw @s ["",{text:"(editArg1) contains: firework",italic:true}]
execute if score @s editArg1 matches 3 run tellraw @s ["",{text:"(editArg1) contains: ender pearl",italic:true}]
execute if score @s editArg1 matches 4 run tellraw @s ["",{text:"(editArg1) contains: super jump",italic:true}]
execute if score @s editArg1 matches 5 run tellraw @s ["",{text:"(editArg1) contains: energy potion",italic:true}]
execute if score @s editArg1 matches 6 run tellraw @s ["",{text:"(editArg1) contains: swiftness potion",italic:true}]
execute if score @s editArg1 matches 7 run tellraw @s ["",{text:"(editArg1) contains: throwable tnt",italic:true}]
execute if score @s editArg1 matches 8 run tellraw @s ["",{text:"(editArg1) contains: 3 red rockets",italic:true}]
#--time limit
tellraw @s ["",{text:"(editArg2) time limit: ",italic:true},{score:{name:"@s",objective:"editArg2"},italic:true},{text:" sec",italic:true}]
#--actions required
tellraw @s ["",{text:"(editArg3) actions required: ",italic:true},{score:{name:"@s",objective:"editArg3"},italic:true}]
