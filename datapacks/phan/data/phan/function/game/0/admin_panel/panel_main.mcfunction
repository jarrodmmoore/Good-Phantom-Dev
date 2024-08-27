#available options:
#-admin mode ON/OFF
#   > with admin mode on, only players with the "admin" tag can start games or change settings
#-free play
#   > play any individual level
#       > score attack
#       > time attack
#       > versus
#           > reset free play scores
#-erase save data
#   > erases level progress and high scores

execute if score @s enderChestMenu matches ..1 run function phan:game/0/admin_panel/panel_primary_menu
execute if score @s enderChestMenu matches 2 run function phan:game/0/admin_panel/panel_gamemode_menu
execute if score @s enderChestMenu matches 3.. run function phan:game/0/admin_panel/panel_level_select