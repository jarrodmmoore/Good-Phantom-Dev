tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.modify_selected_checkpoints",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.tags"}]
tellraw @s ["",{translate:"gp.editor.button.toggle_pos_calc_point",color:"blue",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1032"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_pos_calc_point"}]}}]
tellraw @s ["",{translate:"gp.editor.button.toggle_upward_launch",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1033"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_upward_launch"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.visual_line"}]
tellraw @s ["",{translate:"gp.editor.button.disable",color:"#999999",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1034"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.disable"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_pos_1",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1035"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_pos_1"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_pos_2",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1036"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_pos_2"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.warnings"}]
tellraw @s ["",{translate:"gp.editor.button.toggle_missed_cp_warning",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1037"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_missed_cp_warning"}]}}]
tellraw @s ["",{translate:"gp.editor.button.toggle_wrong_way_warning",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1038"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_wrong_way_warning"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.get_tag_command",color:"gold",bold:false,click_event:{action:"suggest_command",command:"/tag @e[limit=1,sort=nearest,tag=checkpoint] add "},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.get_tag_command"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1000"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]

function phan:common/playsound_positionless_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0