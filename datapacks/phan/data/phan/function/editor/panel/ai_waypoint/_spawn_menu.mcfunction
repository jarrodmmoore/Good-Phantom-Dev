#must have tools!
execute unless items entity @s hotbar.* piglin_spawn_egg unless items entity @s inventory.* piglin_spawn_egg run function phan:editor/panel/ai_waypoint/give_tools

#=====

#menu title
tellraw @s ["",{text:"\n==\\/== ",color:"#FF3333",bold:true},{translate:"gp.editor.title.create_ai_waypoint",color:"#FF3333",bold:true},{text:" ==\\/==",color:"#FF3333",bold:true}]

#waypoint parameters
function phan:editor/panel/ai_waypoint/_waypoint_menu

#=====

tellraw @s ["",{translate:"gp.editor.button.zero_all",color:"gold",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1049"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.zero_all"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1001"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]

#feedback
function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0