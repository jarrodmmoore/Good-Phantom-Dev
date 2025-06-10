#editor home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.node_editor",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]
tellraw @s ["",{translate:"gp.editor.button.create_nodes",color:"#AAFFAA",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1005"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.create_nodes"}]}}]
tellraw @s ["",{translate:"gp.editor.button.modify_selected_trigger",color:"white",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1006"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.modify_selected_trigger"}]}}]
tellraw @s ["",{translate:"gp.editor.button.modify_selected_checkpoint",color:"white",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1007"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.modify_selected_checkpoint"}]}}]
tellraw @s ["",{translate:"gp.editor.button.respawn_objects",color:"#55FF55",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1008"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.respawn_objects"}]}}]
tellraw @s ["",{text:" "}]
execute if entity @e[tag=selected] run function phan:editor/panel/show_number_selected
tellraw @s ["",{translate:"gp.editor.button.select_nearest",color:"#CCCCCC",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1009"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.select_nearest"}]}}]
tellraw @s ["",{translate:"gp.editor.button.nudge_selected",color:"#AAAAAA",bold:false,click_event:{action:"suggest_command",command:"/execute as @e[tag=selected] at @s run tp @s ~ ~ ~"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.nudge_selected"}]}}]
tellraw @s ["",{translate:"gp.editor.button.modify_selected",color:"#AAAAAA",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[tag=selected] edit"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.modify_selected"}]}}]
tellraw @s ["",{translate:"gp.editor.button.cancel_selection",color:"#777777",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1010"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.cancel_selection"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.editor.erase_selected",color:"#FF9999",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1011"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.erase_selected"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{translate:"commands.gamemode.success.self",italic:true,with:[{translate:"gp.misc.creative_mode",italic:true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 2

#clear waypoint editor items when in home panel
clear @s *[custom_data~{waypointTool:1b}]

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0