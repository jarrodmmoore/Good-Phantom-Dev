#input cooldown for player
scoreboard players set @s[type=player] inputCooldown 8

#feedback noise
execute at @s run playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000 0.75

#open whatever page we were on last
scoreboard players add @s levelManagerPage 0

execute if score @s levelManagerPage matches -2 run function phan:level_manager/panel/erase/_menu_scores_lookup
execute if score @s levelManagerPage matches -1 run function phan:level_manager/panel/erase/_menu_lookup

execute if score @s levelManagerPage matches 0 run function phan:level_manager/panel/_menu_lookup
execute if score @s levelManagerPage matches 1 run function phan:level_manager/panel/general/_menu_lookup

execute if score @s levelManagerPage matches 2 run function phan:level_manager/panel/score_attack/_menu_lookup
execute if score @s levelManagerPage matches 3 run function phan:level_manager/panel/score_attack/act/_menu_lookup
execute if score @s levelManagerPage matches 4 run function phan:level_manager/panel/score_attack/act/_menu_2_lookup

execute if score @s levelManagerPage matches 5 run function phan:level_manager/panel/portal_race/_menu_lookup
execute if score @s levelManagerPage matches 6 run function phan:level_manager/panel/portal_race/act/_menu_lookup
execute if score @s levelManagerPage matches 7 run function phan:level_manager/panel/portal_race/act/_menu_2_lookup
execute if score @s levelManagerPage matches 8 run function phan:level_manager/panel/portal_race/_menu_podium_lookup
#...