#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID
#with $(act) = the act we're editing

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 9



#title (+ act name)
tellraw @a[tag=tellMe] ["",{text:"\n\n\n\n\n\n\n"}]
$tellraw @a[tag=tellMe] ["",{text:"===\\/=== ",bold:true,color:"yellow"},{selector:"@s"},{text:" | "},{nbt:"act_name",storage:"phan_dream_$(level_id):sa_act_$(act)",interpret:false},{text:" ===\\/===",bold:true,color:"yellow"}]


#thumbnail_text
$tellraw @a[tag=tellMe] ["",{translate:"gp.level_manager.thumbnail_text",bold:true},{text:"  "},{translate:"gp.misc.brackets",color:"light_purple",bold:false,with:[{translate:"gp.misc.set"}],click_event:{action:"suggest_command",command:"/function phan:level_manager/set_field_and_resummon_snbt {resource_location:'sa_act_$(act)',nbt:'thumbnail_text',value:'[\"\",{text:\"\\uE500\",color:\"white\"}]'}"},hover_event:{action:"show_text",value:[{translate:"gp.misc.set"}]}},{text:"  "},{nbt:"thumbnail_text",storage:"phan_dream_$(level_id):sa_act_$(act)",interpret:true}]

#spacing
tellraw @a[tag=tellMe] ["",{text:"\n\n\n\n\n\n\n"}]


#page number
tellraw @a[tag=tellMe] ["",{text:" "},{translate:"gp.level_manager.page_x_of_x",with:[{text:"3"},{text:"3"}],italic:true},{text:"  "},{text:"[<<]",color:"yellow",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1174"},hover_event:{action:"show_text",value:[{translate:"gp.misc.previous"}]}},{text:" "},{text:"[>>]",color:"dark_gray",bold:false,click_event:{action:"run_command",command:"/trigger tLevelManager set 1079"},hover_event:{action:"show_text",value:[{translate:"gp.misc.next"}]}}]

#back button
tellraw @a[tag=tellMe] ["",{text:" "}]
tellraw @a[tag=tellMe] ["",{translate:"gp.misc.brackets",color:"red",bold:false,with:[{translate:"gp.misc.back"}],click_event:{action:"run_command",command:"/trigger tLevelManager set 1001"},hover_event:{action:"show_text",value:[{translate:"gp.misc.back"}]}}]

$tellraw @a[tag=tellMe] ["",{text:"===/\\=== ",bold:true,color:"yellow"},{selector:"@s"},{text:" | "},{nbt:"act_name",storage:"phan_dream_$(level_id):sa_act_$(act)",interpret:false},{text:" ===/\\===",bold:true,color:"yellow"}]