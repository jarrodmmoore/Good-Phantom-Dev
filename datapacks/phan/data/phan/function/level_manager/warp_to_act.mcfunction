#please don't look up garbage data
execute unless score @s levelUID matches -2147483648..2147483647 run return 0
execute if score @s levelUID matches 0 run return 0
#=====

#store args in another storage
$data modify storage phan:level_index act set value $(act)
$data modify storage phan:level_index value set value "$(mode)"

#do it
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/warp_to_act_go with storage phan:level_index