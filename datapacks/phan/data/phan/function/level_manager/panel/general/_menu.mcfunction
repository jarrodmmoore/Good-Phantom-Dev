#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 1


#armor_stand should update itself on what scores it should have
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/general/load_data_from_storage with storage phan:level_index


#title
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]
tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"green"},{"selector":"@s"},{"text":" ===\\/===","bold":true,"color":"green"}]

#selectable y/n
execute if entity @s[tag=levelSelectable] run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.selectable","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.misc.yes"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:1}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.yes"}]}},{"text":" "},{"translate":"gp.misc.brackets","color":"gray","bold":false,"with":[{"translate":"gp.misc.no"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:0}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.no"}]}}]
execute if entity @s[tag=!levelSelectable] run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.selectable","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"gray","bold":false,"with":[{"translate":"gp.misc.yes"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:1}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.yes"}]}},{"text":" "},{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.misc.no"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'dream_data',nbt:'selectable',value:0}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.no"}]}}]
#function namespace
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.function_namespace","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'dream_data',nbt:'function_namespace',value:'phan'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set_with_tip","with":[{"translate":"gp.level_manager.replace_phan"}]}]}},{"text":"  "},{"nbt":"function_namespace","storage":"phan_dream_$(level_id):dream_data","interpret":false}]
#function path
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.function_path","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'dream_data',nbt:'function_path',value:'levels/custom_dream_1'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}},{"text":"  "},{"nbt":"function_path","storage":"phan_dream_$(level_id):dream_data","interpret":false}]
#sleeping player model
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.sleeping_player_model","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_and_resummon {resource_location:'dream_data',nbt:'sleeping_player_model',value:'gp/object/sleeping_player_1'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}},{"text":"  "},{"nbt":"sleeping_player_model","storage":"phan_dream_$(level_id):dream_data","interpret":false}]
#name text
tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.dream_name","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'dream_data',nbt:'name_text',value:'{\"text\":\"DREAMNAME\"}'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set_with_tip","with":[{"translate":"gp.level_manager.replace_dream_name"}]}]}},{"text":"  "},{"selector":"@s"}]
#name display
tellraw @a[tag=tellMe] ["",{"text":" "}]
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.dream_display_name","bold":true},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_and_resummon {resource_location:'dream_data',nbt:'name_display',value:'[\"\",{\"text\":\"\\\\\\\\\\\\\\\\uE399\",\"color\":\"white\"}]'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}},{"text":"  "},{"nbt":"name_display","storage":"phan_dream_$(level_id):dream_data","interpret":true}]
#back button
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.misc.back"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.back"}]}}]

tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"green"},{"selector":"@s"},{"text":" ===/\\===","bold":true,"color":"green"}]