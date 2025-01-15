#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID
#with $(act) = the act we're editing

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 10



#title (+ act name)
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]
$tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":" ===\\/===","bold":true,"color":"light_purple"}]


#thumbnail_text
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.thumbnail_text","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_and_resummon {resource_location:'pr_act_$(act)',nbt:'thumbnail_text',value:'[\"\",{\"text\":\"\\\\\\\\\\\\\\\\uE500\",\"color\":\"white\"}]'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}},{"text":"  "},{"nbt":"thumbnail_text","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":true}]

#spacing
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]


#page number
tellraw @a[tag=tellMe] ["",{"text":" "},{"translate":"gp.level_manager.page_x_of_x","with":[{"text":"3"},{"text":"3"}],"italic":true},{"text":"  "},{"text":"[<<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/act/_menu_2_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>>]","color":"dark_gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/error_noise"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}}]

#back button
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.misc.back"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.back"}]}}]

$tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":" ===/\\===","bold":true,"color":"light_purple"}]