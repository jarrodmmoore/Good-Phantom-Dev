#this is used to avoid the new warning messages that show up when you click a run_command event with permission level > 1

#editor
execute if score @s tEditor matches 1.. run function phan:player/admin_ui/editor_trigger

#level manager
execute if score @s tLevelManager matches 1.. run function phan:player/admin_ui/level_manager_trigger

#enable triggers since we're in creative mode
scoreboard players enable @s tEditor
scoreboard players enable @s tLevelManager