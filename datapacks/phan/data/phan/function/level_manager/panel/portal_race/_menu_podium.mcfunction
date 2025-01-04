#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 8


#armor_stand should update itself on what scores it should have
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/portal_race/load_data_from_storage_podium with storage phan:level_index

#title
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]
tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"translate":"gp.level_manager.podium"},{"text":" ===\\/===","bold":true,"color":"light_purple"}]

#time
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.time_of_day","bold":true},{"text":"  "},{"nbt":"time","storage":"phan_dream_$(level_id):pr_podium","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'pr_podium',nbt:'time',value:6000}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#weather
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.weather","bold":true},{"text":"  "},{"nbt":"weather","storage":"phan_dream_$(level_id):pr_podium","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_podium',nbt:'weather',value:'clear'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#skybox
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.skybox","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'skybox',offset:1,mod:4}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'skybox',offset:1,mod:4}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"nbt":"skybox","storage":"phan_dream_$(level_id):pr_podium","interpret":false}]
#teleport_dimension (#dimensionPR)
execute if score #dimensionPR value matches 0 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.teleport_dimension","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.dimension_overworld"}]
execute if score #dimensionPR value matches 1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.teleport_dimension","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.dimension_nether"}]
execute if score #dimensionPR value matches 2 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.teleport_dimension","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_podium',nbt:'teleport_dimension',offset:0,mod:3}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.dimension_end"}]
#teleport_location
tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.teleport_coordinates","bold":true},{"text":"  "},{"score":{"name":"#coord_x","objective":"value"}},{"text":" "},{"score":{"name":"#coord_y","objective":"value"}},{"text":" "},{"score":{"name":"#coord_z","objective":"value"}},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_coordinates {resource_location:'pr_podium',nbt:'teleport_location',x:0,y:100,z:0}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set_with_tip","with":[{"translate":"gp.level_manager.replace_xyz"}]}]}}]

#back button
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.misc.back"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.back"}]}}]

tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"translate":"gp.level_manager.podium"},{"text":" ===/\\===","bold":true,"color":"light_purple"}]