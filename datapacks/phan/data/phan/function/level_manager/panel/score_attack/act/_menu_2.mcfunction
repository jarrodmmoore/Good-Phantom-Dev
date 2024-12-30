#executed by a levelEntry armor_stand
#with $(level_id) = this armor stand's UID
#with $(act) = the act we're editing

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 4


#armor_stand should update itself on what scores it should have
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/score_attack/act/load_data_from_storage with storage phan:level_index


#title (+ act name)
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n"}]
$tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"yellow"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):sa_act_$(act)","interpret":false},{"text":" ===\\/===","bold":true,"color":"yellow"}]

#notes:
#replayStartAnim controls whether we smoothly transition between levels or do a load screen
#portalXStopsMusic controls which portals stop music upon entry

#thumbnail_item
#thumbnail_model
#time
#weather
#skybox
#soul_approach
#use_area_transition
#music_track
#music_function
#reset_plane

#page number
tellraw @a[tag=tellMe] ["",{"text":" "},{"translate":"gp.level_manager.page_x_of_x","with":[{"text":"1"},{"text":"2"}],"italic":true},{"text":"  "},{"text":"[<<]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/score_attack/act/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.previous"}]}},{"text":"[>>]","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/function phan:level_manager/error_noise"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.next"}]}}]

#back button
tellraw @a[tag=tellMe] ["",{"text":" "}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.misc.back"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/score_attack/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.back"}]}}]

$tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"yellow"},{"selector":"@s"},{"text":" | "},{"nbt":"act_name","storage":"phan_dream_$(level_id):sa_act_$(act)","interpret":false},{"text":" ===/\\===","bold":true,"color":"yellow"}]