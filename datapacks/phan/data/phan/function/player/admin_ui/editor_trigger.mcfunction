#must be in creative!
execute unless entity @s[gamemode=creative] run return run scoreboard players reset @s tEditor
#=====

execute if score @s tEditor matches 0..49 run function phan:player/admin_ui/editor_trigger_0_49
execute if score @s tEditor matches 50..99 run function phan:player/admin_ui/editor_trigger_0_49

#cleanup
scoreboard players reset @s tEditor