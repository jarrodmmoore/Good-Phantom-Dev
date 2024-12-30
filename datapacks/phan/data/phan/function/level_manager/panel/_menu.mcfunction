#executed by a levelEntry armor_stand

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage 0


#armor_stand should update us on some scores
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/panel/load_act_count_from_storage with storage phan:level_index


#title
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n"}]
tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true},{"selector":"@s"},{"text":" ===\\/===","bold":true}]

# [General]
tellraw @a[tag=tellMe] ["",{"text":"\n"}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"green","bold":false,"with":[{"translate":"gp.level_manager.general"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/general/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.level_manager.general"}]}}]
# [Score Attack]
execute if score #actCountSA value matches 1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.mode_select.score_attack"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/score_attack/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.mode_select.score_attack"}]}},{"text":"  "},{"translate":"gp.level_manager.act_count","color":"gray","with":[{"score":{"name":"#actCountSA","objective":"value"}},{"score":{"name":"#test2","objective":"value"}}]}]
execute unless score #actCountSA value matches 1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.mode_select.score_attack"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/score_attack/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.mode_select.score_attack"}]}},{"text":"  "},{"translate":"gp.level_manager.act_count_plural","color":"gray","with":[{"score":{"name":"#actCountSA","objective":"value"}},{"score":{"name":"#test2","objective":"value"}}]}]
# [Portal Race]
execute if score #actCountPR value matches 1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.mode_select.portal_race"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.mode_select.portal_race"}]}},{"text":"  "},{"translate":"gp.level_manager.act_count","color":"gray","with":[{"score":{"name":"#actCountPR","objective":"value"}},{"score":{"name":"#test3","objective":"value"}}]}]
execute unless score #actCountPR value matches 1 run tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"light_purple","bold":false,"with":[{"translate":"gp.mode_select.portal_race"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/portal_race/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.mode_select.portal_race"}]}},{"text":"  "},{"translate":"gp.level_manager.act_count_plural","color":"gray","with":[{"score":{"name":"#actCountPR","objective":"value"}},{"score":{"name":"#test3","objective":"value"}}]}]
# [Erase]
tellraw @a[tag=tellMe] ["",{"text":"\n"}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"red","bold":false,"with":[{"translate":"gp.level_manager.erase"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/erase/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.level_manager.erase"}]}}]

tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true},{"selector":"@s"},{"text":" ===/\\===","bold":true}]