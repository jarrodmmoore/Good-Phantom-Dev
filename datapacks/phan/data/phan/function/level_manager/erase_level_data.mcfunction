#please don't generate garbage data
execute unless score @s levelUID matches -2147483648..2147483647 run return 0
execute if score @s levelUID matches 0 run return 0
#=====

#default player model will be different on each custom number level
data modify storage phan:level_index sleeping_player set value 'steve'
execute if score @s levelUID matches 1001 run data modify storage phan:level_index sleeping_player set value 'alex'
execute if score @s levelUID matches 1002 run data modify storage phan:level_index sleeping_player set value 'ari'
execute if score @s levelUID matches 1003 run data modify storage phan:level_index sleeping_player set value 'efe'
execute if score @s levelUID matches 1004 run data modify storage phan:level_index sleeping_player set value 'kai'
execute if score @s levelUID matches 1005 run data modify storage phan:level_index sleeping_player set value 'makena'
execute if score @s levelUID matches 1006 run data modify storage phan:level_index sleeping_player set value 'noor'
execute if score @s levelUID matches 1007 run data modify storage phan:level_index sleeping_player set value 'sunny'
execute if score @s levelUID matches 1008 run data modify storage phan:level_index sleeping_player set value 'zuri'
#default function index thingy to avoid players confusing themselves when making custom levels
data modify storage phan:level_index function_index set value 1
execute if score @s levelUID matches 1002 run data modify storage phan:level_index function_index set value 2
execute if score @s levelUID matches 1003 run data modify storage phan:level_index function_index set value 3
execute if score @s levelUID matches 1004 run data modify storage phan:level_index function_index set value 4
execute if score @s levelUID matches 1005 run data modify storage phan:level_index function_index set value 5
execute if score @s levelUID matches 1006 run data modify storage phan:level_index function_index set value 6
execute if score @s levelUID matches 1007 run data modify storage phan:level_index function_index set value 7
execute if score @s levelUID matches 1008 run data modify storage phan:level_index function_index set value 8

#do it
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/generate_default_data with storage phan:level_index
#also erase scores while here
function phan:level_manager/clear_scores with storage phan:level_index

#player should return to top menu
scoreboard players set @s[type=player] levelManagerPage 0
execute if entity @s[type=player] run function phan:level_manager/panel/_open_page_index