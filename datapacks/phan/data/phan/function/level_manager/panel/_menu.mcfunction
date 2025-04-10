#executed by a levelEntry armor_stand

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 0


#armor_stand should update us on some scores
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/load_act_count_from_storage with storage phan:level_index


#title
tellraw @a[tag=tellMe] ["",{text:"\n\n\n\n\n\n\n"}]
tellraw @a[tag=tellMe] ["",{text:"===\\/=== ",bold:true},{selector:"@s"},{text:" ===\\/===",bold:true}]

# [General]
tellraw @a[tag=tellMe] ["",{text:" "}]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"green",bold:false,with:[{translate:"gp.level_manager.general"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/general/_menu_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.general"}]}},{text:"  "},{translate:"gp.level_manager.selectable_status",color:"gray",with:[{score:{name:"#test4",objective:"value"}}]}]
# [Score Attack]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"yellow",bold:false,with:[{translate:"gp.mode_select.score_attack"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/score_attack/_menu_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.mode_select.score_attack"}]}},{text:"  "},{translate:"gp.level_manager.selectable_status",color:"gray",with:[{score:{name:"#test2",objective:"value"}}]}]
# [Portal Race]
execute if score #actCountPR value matches 1 run tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.mode_select.versus"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/portal_race/_menu_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.mode_select.versus"}]}},{text:"  "},{translate:"gp.level_manager.act_count",color:"gray",with:[{score:{name:"#actCountPR",objective:"value"}},{score:{name:"#test3",objective:"value"}}]}]
execute unless score #actCountPR value matches 1 run tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.mode_select.versus"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/portal_race/_menu_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.mode_select.versus"}]}},{text:"  "},{translate:"gp.level_manager.act_count_plural",color:"gray",with:[{score:{name:"#actCountPR",objective:"value"}},{score:{name:"#test3",objective:"value"}}]}]
# [Import] [Export]
tellraw @a[tag=tellMe] ["",{text:" "}]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"green",bold:false,with:[{translate:"gp.level_manager.import_dream_data"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/import_dream {filename:'filename'}"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.import_dream_data"}]}},{text:"  "},{translate:"gp.misc.brackets",color:"green",bold:false,with:[{translate:"gp.level_manager.export_dream_data"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/export_dream {filename:'filename'}"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.export_dream_data_with_tip"}]}}]
# [Erase data] [Erase scores] 
tellraw @a[tag=tellMe] ["",{text:" "}]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"red",bold:false,with:[{translate:"gp.level_manager.erase_data"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/erase/_menu_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.erase_data"}]}},{text:"  "},{translate:"gp.misc.brackets",color:"red",bold:false,with:[{translate:"gp.level_manager.erase_player_scores"}],click_event:{action:"run_command",command:"/function phan:level_manager/panel/erase/_menu_scores_lookup"},hover_event:{action:"show_text",value:[{translate:"gp.level_manager.erase_player_scores"}]}}]

tellraw @a[tag=tellMe] ["",{text:"===/\\=== ",bold:true},{selector:"@s"},{text:" ===/\\===",bold:true}]