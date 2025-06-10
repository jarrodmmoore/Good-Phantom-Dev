tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.modify_trigger_area",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]
function phan:editor/panel/show_number_selected
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.header.trigger_area"}]
tellraw @s ["",{translate:"gp.editor.button.set_min_xyz",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1039"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_min_xyz"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_max_xyz",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1040"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_max_xyz"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_min_max_tall",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1041"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_min_max_tall"}]}}]
tellraw @s ["",{translate:"gp.editor.button.set_boundary",color:"gray",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players set @e[tag=selected] checkM"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.set_boundary"}]}}]
tellraw @s ["",{translate:"gp.editor.button.add_to_boundary",color:"gray",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players add @e[tag=selected] checkM"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.add_to_boundary"}]}}]
tellraw @s ["",{translate:"gp.editor.button.subtract_from_boundary",color:"gray",bold:false,click_event:{action:"suggest_command",command:"/scoreboard players remove @e[tag=selected] checkM"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.subtract_from_boundary"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1000"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]

function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0