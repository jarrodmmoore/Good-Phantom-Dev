execute unless score @s enderChestMenu matches 0.. run function phan:game/0/admin_panel/empty_ender_chest
scoreboard players add @s enderChestMenu 0

execute if entity @s[tag=!admin] run function phan:game/0/admin_panel/panel_not_admin
execute if entity @s[tag=admin] run function phan:game/0/admin_panel/panel_main
