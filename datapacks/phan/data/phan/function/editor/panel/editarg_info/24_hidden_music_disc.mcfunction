data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.hidden_music_disc"}]
tellraw @s ["",{text:"(editArg1) disc number: ",italic:true},{score:{name:"@s",objective:"editArg1"},italic:true}]
