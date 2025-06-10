#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.editor",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]
tellraw @s ["",{translate:"gp.editor.button.nodes",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1000"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.nodes"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.ai_waypoints",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.ai_waypoints"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.utilities",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1003"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.utilities"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.exit",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1004"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.exit"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{translate:"commands.gamemode.success.self",italic:true,with:[{translate:"gp.misc.creative_mode",italic:true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 1

#clear node and waypoint items when in home panel
clear @s *[custom_data~{nodeTool:1b}]
clear @s *[custom_data~{waypointTool:1b}]

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0