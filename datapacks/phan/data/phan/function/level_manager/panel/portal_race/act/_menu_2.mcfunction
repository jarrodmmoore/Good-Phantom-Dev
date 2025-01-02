#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID
#with $(act) = the act we're editing

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 7


#armor_stand should update itself on what scores it should have
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/portal_race/act/load_data_from_storage with storage phan:level_index


#title (+ act name)
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]
$tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":" ===\\/===","bold":true,"color":"light_purple"}]

#note about music_track:
#-2 = use custom path
#-1 = random
#0 = none
#1.. = specific vanilla track

#reminder! these two need to be calculated while the player is editing their track:
#time_between_checkpoints
#bot_checkpoint_data
#^ these could maybe be set manually, but this is probably too obtuse for people to understand

#thumbnail_item
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.thumbnail_item","bold":true},{"text":"  "},{"nbt":"thumbnail_item","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_act_$(act)',nbt:'thumbnail_item',value:\"magenta_dye\"}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#thumbnail_model
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.thumbnail_model","bold":true},{"text":"  "},{"nbt":"thumbnail_model","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_act_$(act)',nbt:'thumbnail_model',value:\"gp/map_preview/generic\"}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#time
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.time_of_day","bold":true},{"text":"  "},{"nbt":"time","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'pr_act_$(act)',nbt:'time',value:6000}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#weather
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.weather","bold":true},{"text":"  "},{"nbt":"weather","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_act_$(act)',nbt:'weather',value:'clear'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#skybox
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.skybox","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_act_$(act)',nbt:'skybox',offset:1,mod:4}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_act_$(act)',nbt:'skybox',offset:1,mod:4}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"nbt":"skybox","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false}]
#countdown_type
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.start_countdown","bold":true},{"text":"  "},{"nbt":"countdown_type","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field_numeric {resource_location:'pr_act_$(act)',nbt:'countdown_type',value:0}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
#music_track (#musicTrackPR)
$execute if score #musicTrackPR value matches ..-2 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_track","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.music_track_info.custom","with":[{"score":{"name":"#musicTrackPR","objective":"value"}}]}]
$execute if score #musicTrackPR value matches -1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_track","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.music_track_info.random","with":[{"score":{"name":"#musicTrackPR","objective":"value"}}]}]
$execute if score #musicTrackPR value matches 0 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_track","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.music_track_info.none","with":[{"score":{"name":"#musicTrackPR","objective":"value"}}]}]
$execute if score #musicTrackPR value matches 1.. run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_track","bold":true},{"text":"  "},{"text":"[<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field_down {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/cycle_field {resource_location:'pr_act_$(act)',nbt:'music_track',offset:-2,mod:32}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}},{"text":"  "},{"translate":"gp.level_manager.music_track_info.standard","with":[{"score":{"name":"#musicTrackPR","objective":"value"}}]}]
#music_function
$execute if score #musicTrackPR value matches ..-2 run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_function","bold":true},{"text":"  "},{"nbt":"music_function","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_act_$(act)',nbt:'music_function',value:\"bgm/play_0\"}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]
$execute if score #musicTrackPR value matches -1.. run tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.music_function","bold":true,"color":"dark_gray"},{"text":"  "},{"nbt":"music_function","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false,"color":"dark_gray"}]
#reset_plane
$tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.player_reset_height","bold":true},{"text":"  "},{"nbt":"reset_plane","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":"  "},{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.misc.set"}],"clickEvent":{"action":"suggest_command","value":"/function phan:level_manager/set_field {resource_location:'pr_act_$(act)',nbt:'reset_plane',value:'..-100'}"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.set"}]}}]

#page number
tellraw @a[tag=tellMe] ["",{"text":" "},{"translate":"gp.level_manager.page_x_of_x","with":[{"text":"2"},{"text":"2"}],"italic":true},{"text":"  "},{"text":"[<<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/act/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":" "},{"text":"[>>]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/error_noise"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}}]

#back button
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.misc.back"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.back"}]}}]

$tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"light_purple"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):pr_act_$(act)","interpret":false},{"text":" ===/\\===","bold":true,"color":"light_purple"}]