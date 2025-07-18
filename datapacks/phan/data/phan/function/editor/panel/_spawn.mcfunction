execute unless items entity @s hotbar.* vex_spawn_egg unless items entity @s inventory.* vex_spawn_egg run give @s vex_spawn_egg[entity_data={id:"minecraft:vex",NoGravity:0b,NoAI:1b,Tags:["nodeSpawn"]},custom_data={nodeTool:1b},custom_name={text:"Node"},item_model="gp/editor/node"] 1

#need values!
execute unless score @s editNode matches 1.. run scoreboard players set @s editNode 1
scoreboard players add @s editYaw 0
scoreboard players add @s editPitch 0
scoreboard players add @s editArea 0
scoreboard players add @s editLoadArea 0
scoreboard players add @s editArg1 0
scoreboard players add @s editArg2 0
scoreboard players add @s editArg3 0

#menu title
tellraw @s ["",{text:"\n==\\/== ",color:"#6666FF",bold:true},{translate:"gp.editor.title.create_node",color:"#6666FF",bold:true},{text:" ==\\/==",color:"#6666FF",bold:true}]

#=====
#editArg info

#fallback node name is "undefined"
data modify storage phan:data display.node_name set value ["",{translate:"gp.editor.node_type.undefined",color:"red"}]

#show info about edit arguments and get the proper node name stored
function phan:editor/panel/editarg_info/prep

#=====

#node type select
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1012"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1013"}},{text:"editNode = "},{score:{name:"@s",objective:"editNode"}},{text:" ("},{nbt:"display.node_name",storage:"phan:data",interpret:true},{text:")"}]

#generic node parameters
tellraw @s ["",{text:" "}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1014"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1015"}},{text:"editArea = "},{score:{name:"@s",objective:"editArea"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1016"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1017"}},{text:"editLoadArea = "},{score:{name:"@s",objective:"editLoadArea"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1018"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1019"}},{text:"editYaw = "},{score:{name:"@s",objective:"editYaw"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1020"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1021"}},{text:"editPitch = "},{score:{name:"@s",objective:"editPitch"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1022"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1023"}},{text:"editArg1 = "},{score:{name:"@s",objective:"editArg1"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1024"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1025"}},{text:"editArg2 = "},{score:{name:"@s",objective:"editArg2"}}]
tellraw @s ["",{text:"[-] ",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1026"}},{text:"[+] ",color:"green",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1027"}},{text:"editArg3 = "},{score:{name:"@s",objective:"editArg3"}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.zero_all",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1028"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.zero_all"}]}}]
tellraw @s ["",{translate:"gp.editor.button.copy_nearest",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1029"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.copy_nearest"}]}}]
tellraw @s ["",{translate:"gp.editor.button.repair_tags",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1030"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.repair_tags"}]}}]
tellraw @s ["",{translate:"gp.editor.button.fix_editloadarea",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1031"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.fix_editloadarea"}]}}]
tellraw @s ["",{text:" "}]
tellraw @s ["",{translate:"gp.editor.button.back",color:"red",bold:false,click_event:{action:"run_command",command:"/trigger tEditor set 1000"},hover_event:{action:"show_text",value:[{translate:"gp.editor.hover.back"}]}}]

#feedback
function phan:common/playsound_positionless_low_volume_macro {sound:"minecraft:custom_sfx/bit_dink",targets:"@s",pitch:"1",volume:"0.8"}
scoreboard players set @s editor 0