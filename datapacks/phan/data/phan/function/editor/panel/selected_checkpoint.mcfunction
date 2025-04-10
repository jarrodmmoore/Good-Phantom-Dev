tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.modify_selected_checkpoints",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.tags"}]
tellraw @s ["",{translate:"gp.editor.button.toggle_pos_calc_point",color:"blue",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/toggle_position_calc"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_pos_calc_point"}]}}]
tellraw @s ["",{translate:"gp.editor.button.toggle_upward_launch",color:"yellow",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/toggle_launch_upward"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_upward_launch"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.visual_line"}]
tellraw @s ["",{translate:"gp.editor.button.disable",color:"#999999",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/disable_visual"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.disable"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_pos_1",color:"yellow",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/set_line_pos_1"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_pos_1"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_pos_2",color:"yellow",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/set_line_pos_2"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_pos_2"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.warnings"}]
tellraw @s ["",{translate:"gp.editor.button.toggle_missed_cp_warning",color:"yellow",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/toggle_missed_cp_warning"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_missed_cp_warning"}]}}]
tellraw @s ["",{translate:"gp.editor.button.toggle_wrong_way_warning",color:"yellow",bold:false,click_event:{action:"run_command",command:"/function phan:editor/checkpoint/toggle_wrong_way_warning"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.toggle_wrong_way_warning"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.get_tag_command",color:"gold",bold:false,click_event:{action:"suggest_command",command:"/tag @e[limit=1,sort=nearest,tag=checkpoint] add "},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.get_tag_command"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/function phan:editor/panel/_meta_menu"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]

playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000
scoreboard players set @s editor 0