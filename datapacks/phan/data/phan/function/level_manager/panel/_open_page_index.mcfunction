#input cooldown for player
scoreboard players set @s[type=player] inputCooldown 8
scoreboard players reset @s dreamManager

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

execute if score @s levelManagerPage matches 9 run function phan:level_manager/panel/score_attack/act/_menu_3_lookup
execute if score @s levelManagerPage matches 10 run function phan:level_manager/panel/portal_race/act/_menu_3_lookup

#...

#notify player if nothing is selected
scoreboard players set #success value 0
scoreboard players operation #checkID value = @s levelUID
execute as @e[tag=levelEntry,type=armor_stand] if score @s levelUID = #checkID value run scoreboard players set #success value 1
execute if score #success value matches 0 run tellraw @s ["",{translate:"gp.level_manager.error.no_dream_selected",color:"red"}]
execute if score #success value matches 0 run function phan:level_manager/error_noise

#advancement for editing a custom dream
execute if score #success value matches 1 if score @s levelUID matches 1001.. run advancement grant @s only phan:good_phantom/make_it_good

#feedback noise
execute if score #success value matches 1 at @s run playsound minecraft:custom_sfx/bit_dink master @s ~ 100000 ~ 100000 0.75