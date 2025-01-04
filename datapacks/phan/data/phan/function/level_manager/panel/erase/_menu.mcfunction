#executed by a levelEntry armor_stand

#get players on the right page
scoreboard players set @a[tag=tellMe] levelManagerPage -1


#title
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n\n\n\n\n"}]
tellraw @a[tag=tellMe] ["",{"text":"===\\/=== ","bold":true,"color":"red"},{"selector":"@s"},{"text":" ===\\/===","bold":true,"color":"red"}]

#are you sure about that?
tellraw @a[tag=tellMe] ["",{"text":"\n\n\n"}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.level_manager.are_you_sure_about_erase_data","italic":true}]
# [No]    [Yes]
tellraw @a[tag=tellMe] ["",{"text":"\n"}]
tellraw @a[tag=tellMe] ["",{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.misc.no"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/panel/_menu_lookup"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.no"}]}},{"text":"      "},{"translate":"gp.misc.brackets","color":"yellow","bold":false,"with":[{"translate":"gp.misc.yes"}],"clickEvent":{"action":"run_command","value":"/function phan:level_manager/erase_level_data"},"hoverEvent":{"action":"show_text","value":[{"translate":"gp.misc.yes"}]}}]

tellraw @a[tag=tellMe] ["",{"text":"===/\\=== ","bold":true,"color":"red"},{"selector":"@s"},{"text":" ===/\\===","bold":true,"color":"red"}]