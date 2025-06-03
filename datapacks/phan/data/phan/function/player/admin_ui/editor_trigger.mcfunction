#must be in creative!
execute unless entity @s[gamemode=creative] run return run scoreboard players reset @s tEditor
#=====

execute if score @s tEditor matches 1000..1049 run function phan:player/admin_ui/editor_trigger_0_49
execute if score @s tEditor matches 1050..1099 run function phan:player/admin_ui/editor_trigger_50_99

#cleanup
scoreboard players reset @s tEditor