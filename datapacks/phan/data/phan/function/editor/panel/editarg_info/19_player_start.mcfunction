data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.player_start"}]
tellraw @s ["",{text:"(editArg1) player assign order: ",italic:true},{score:{name:"@s",objective:"editArg1"},italic:true}]
