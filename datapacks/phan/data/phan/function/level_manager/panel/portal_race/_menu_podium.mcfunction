#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 8


#armor_stand should update itself on what scores it should have
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/portal_race/load_data_from_storage_podium with storage phan:level_index

#title
tellraw @a[tag=tellMe] ["",{text:"\n\n\n\n\n\n\n"}]
tellraw @a[tag=tellMe] ["",{text:"===\\/=== ",bold:true,color:"light_purple"},{selector:"@s"},{text:" | "},{translate:"gp.level_manager.podium"},{text:" ===\\/===",bold:true,color:"light_purple"}]

#time
$tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.time_of_day",bold:true},{text:"  "},{nbt:"time",storage:"phan_dream_$(level_id):pr_podium",interpret:false},{text:"  "},{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.misc.set"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/set_field_numeric {resource_location:'pr_podium',nbt:'time',value:6000}"},hover_event:{action:"show_text",value:[{translate:"gp.misc.set"}]}}]
#weather
$tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.weather",bold:true},{text:"  "},{nbt:"weather",storage:"phan_dream_$(level_id):pr_podium",interpret:false},{text:"  "},{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.misc.set"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/set_field {resource_location:'pr_podium',nbt:'weather',value:'clear'}"},hover_event:{action:"show_text",value:[{translate:"gp.misc.set"}]}}]
#skybox
$tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.skybox",bold:true},{text:"  "},{text:"[<]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1009"},hover_event:{action:"show_text",value:[{translate:"gp.misc.previous"}]}},{text:" "},{text:"[>]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1010"},hover_event:{action:"show_text",value:[{translate:"gp.misc.next"}]}},{text:"  "},{nbt:"skybox",storage:"phan_dream_$(level_id):pr_podium",interpret:false}]
#night vision
execute if entity @s[tag=podiumNightVision] run tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.night_vision",bold:true},{text:"  "},{translate:"gp.misc.brackets",color:"yellow",bold:false,with:[{translate:"gp.misc.yes"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1011"},hover_event:{action:"show_text",value:[{translate:"gp.misc.yes"}]}},{text:" "},{translate:"gp.misc.brackets",color:"gray",bold:false,with:[{translate:"gp.misc.no"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1012"},hover_event:{action:"show_text",value:[{translate:"gp.misc.no"}]}}]
execute if entity @s[tag=!podiumNightVision] run tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.night_vision",bold:true},{text:"  "},{translate:"gp.misc.brackets",color:"gray",bold:false,with:[{translate:"gp.misc.yes"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1011"},hover_event:{action:"show_text",value:[{translate:"gp.misc.yes"}]}},{text:" "},{translate:"gp.misc.brackets",color:"yellow",bold:false,with:[{translate:"gp.misc.no"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1012"},hover_event:{action:"show_text",value:[{translate:"gp.misc.no"}]}}]
#teleport_dimension (#dimensionPR)
execute if score #dimensionPR value matches 1 run tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.teleport_dimension",bold:true},{text:"  "},{text:"[<]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1013"},hover_event:{action:"show_text",value:[{translate:"gp.misc.previous"}]}},{text:" "},{text:"[>]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1014"},hover_event:{action:"show_text",value:[{translate:"gp.misc.next"}]}},{text:"  "},{translate:"gp.level_manager.dimension_overworld"}]
execute if score #dimensionPR value matches 2 run tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.teleport_dimension",bold:true},{text:"  "},{text:"[<]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1013"},hover_event:{action:"show_text",value:[{translate:"gp.misc.previous"}]}},{text:" "},{text:"[>]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1014"},hover_event:{action:"show_text",value:[{translate:"gp.misc.next"}]}},{text:"  "},{translate:"gp.level_manager.dimension_nether"}]
execute if score #dimensionPR value matches 3 run tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.teleport_dimension",bold:true},{text:"  "},{text:"[<]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1013"},hover_event:{action:"show_text",value:[{translate:"gp.misc.previous"}]}},{text:" "},{text:"[>]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1014"},hover_event:{action:"show_text",value:[{translate:"gp.misc.next"}]}},{text:"  "},{translate:"gp.level_manager.dimension_end"}]
#teleport_location
tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.teleport_coordinates",bold:true},{text:"  "},{score:{name:"#coord_x",objective:"value"}},{text:" "},{score:{name:"#coord_y",objective:"value"}},{text:" "},{score:{name:"#coord_z",objective:"value"}},{text:"  "},{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.misc.set"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/set_coordinates {resource_location:'pr_podium',nbt:'teleport_location',x:0,y:100,z:0}"},hover_event:{action:"show_text",value:[{translate:"gp.misc.set_with_tip",with:[{translate:"gp.level_manager.replace_xyz"}]}]}},{text:"  "},{translate:"gp.misc.brackets",color:"dark_aqua",with:[{translate:"gp.level_manager.warp_to"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1015"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.warp_to"}]}}]

#back button
tellraw @a[tag=tellMe] ["",{text:" "}]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"red",bold:false,with:[{translate:"gp.misc.back"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1002"},hover_event:{action:"show_text",value:[{translate:"gp.misc.back"}]}}]

tellraw @a[tag=tellMe] ["",{text:"===/\\=== ",bold:true,color:"light_purple"},{selector:"@s"},{text:" | "},{translate:"gp.level_manager.podium"},{text:" ===/\\===",bold:true,color:"light_purple"}]