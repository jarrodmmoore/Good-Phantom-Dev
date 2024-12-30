scoreboard players add @s levelManagerPage 0

execute if score @s levelManagerPage matches -1 run function phan:level_manager/panel/erase/_menu_lookup
execute if score @s levelManagerPage matches 0 run function phan:level_manager/panel/_menu_lookup
execute if score @s levelManagerPage matches 1 run function phan:level_manager/panel/general/_menu_lookup
execute if score @s levelManagerPage matches 2 run function phan:level_manager/panel/score_attack/_menu_lookup
execute if score @s levelManagerPage matches 3 run function phan:level_manager/panel/score_attack/act/_menu_lookup
execute if score @s levelManagerPage matches 4 run function phan:level_manager/panel/score_attack/act/_menu_2_lookup
#...