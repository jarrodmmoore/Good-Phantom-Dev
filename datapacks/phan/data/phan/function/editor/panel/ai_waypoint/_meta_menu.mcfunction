#must have tools!
execute unless items entity @s hotbar.* piglin_spawn_egg unless items entity @s inventory.* piglin_spawn_egg run function phan:editor/panel/ai_waypoint/give_tools

#=====

#ai waypoint home panel
#has lots of stuff for selecting and modifying existing nodes

tellraw @s ["",{text:"\n==\\/== ",color:"#FF3333",bold:true},{translate:"gp.editor.title.ai_waypoint_editor",color:"#FF3333",bold:true},{text:" ==\\/==",color:"#FF3333",bold:true}]
tellraw @s ["",{translate:"gp.editor.button.create_ai_waypoints",color:"#AAFFAA",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1042"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.create_ai_waypoints"}]}}]
tellraw @s ["",{text:" "}]
execute unless score @s AIBC_set_dir matches 1..5 run tellraw @s ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"white"}]}]
tellraw @s[scores={AIBC_set_dir=1}] ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"green"}]}]
tellraw @s[scores={AIBC_set_dir=2}] ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"aqua"}]}]
tellraw @s[scores={AIBC_set_dir=3}] ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"#00CC00"}]}]
tellraw @s[scores={AIBC_set_dir=4}] ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"#4444FF"}]}]
tellraw @s[scores={AIBC_set_dir=5}] ["",{text:"[<] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1043"}},{text:"[>] ",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1044"}},{translate:"gp.editor.info.waypoint_connector_setting",with:[{score:{name:"@s",objective:"AIBC_set_dir"},color:"yellow"}]}]
tellraw @s ["",{text:" "}]
execute if entity @e[tag=selectedWaypoint] run function phan:editor/panel/ai_waypoint/show_number_selected
tellraw @s ["",{translate:"gp.editor.button.select_nearest_waypoint",color:"#CCCCCC",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1045"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.select_nearest_waypoint"}]}}]
tellraw @s ["",{translate:"gp.editor.button.nudge_selected",color:"#AAAAAA",bold:false,click_event:{action:"suggest_command",command:"/execute as @e[tag=selectedWaypoint] at @s run tp @s ~ ~ ~"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.nudge_selected"}]}}]
tellraw @s ["",{translate:"gp.editor.button.modify_selected",color:"#AAAAAA",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[tag=selectedWaypoint] AIBC_"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.modify_selected"}]}}]
tellraw @s ["",{translate:"gp.editor.button.cancel_selection",color:"#777777",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1046"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.cancel_selection"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.editor.erase_selected",color:"#FF9999",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1047"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.erase_selected"}]}}]
tellraw @s ["",{translate:"gp.editor.button.repair_tags",color:"gold",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1048"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.repair_tags_waypoint"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1002"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]
#go into creative if we aren't already
execute if entity @s[gamemode=adventure] run tellraw @s ["",{translate:"commands.gamemode.success.self",italic:true,with:[{translate:"gp.misc.creative_mode",italic:true}]}]
#gameMode.creative in the language files has a capital letter, so i'm not gonna trust it. mojang might flatten it in the future and make us look silly
gamemode creative @s[gamemode=adventure]

#make sure we're in the proper editor state
scoreboard players set @s editorState 3

#feedback
function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0