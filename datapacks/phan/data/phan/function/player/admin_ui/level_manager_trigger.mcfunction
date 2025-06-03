#must be in creative!
execute unless entity @s[gamemode=creative] run return run scoreboard players reset @s tLevelManager
#=====

execute if score @s tLevelManager matches 1000..1049 run function phan:player/admin_ui/level_manager_trigger_0_49
execute if score @s tLevelManager matches 1050..1099 run function phan:player/admin_ui/level_manager_trigger_50_99
execute if score @s tLevelManager matches 1100..1149 run function phan:player/admin_ui/level_manager_trigger_100_149
execute if score @s tLevelManager matches 1150..1199 run function phan:player/admin_ui/level_manager_trigger_150_199

#cleanup
scoreboard players reset @s tLevelManager