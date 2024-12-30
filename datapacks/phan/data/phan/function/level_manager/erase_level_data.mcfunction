#please don't generate garbage data
execute unless score @s levelUID matches -2147483648..2147483647 run return 0
execute if score @s levelUID matches 0 run return 0
#=====

#do it
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/generate_default_data with storage phan:level_index

#player should return to top menu
scoreboard players set @s[type=player] levelManagerPage 0
execute if entity @s[type=player] run function phan:level_manager/panel/_open_page_index