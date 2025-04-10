data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.loading_zone"}]
execute if score @s editArg1 matches 0..5 run tellraw @s ["",{text:"(editArg1) activates load area ",italic:true},{score:{name:"@s",objective:"editArg1"},italic:true}]
execute unless score @s editArg1 matches 0..5 run tellraw @s ["",{text:"(editArg1) activates load area ",italic:true},{score:{name:"@s",objective:"editArg1"},italic:true},{text:" <invalid>",color:"red"}]
