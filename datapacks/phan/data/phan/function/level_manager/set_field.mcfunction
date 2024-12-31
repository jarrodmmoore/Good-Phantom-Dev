#please don't generate garbage data
execute unless score @s levelUID matches -2147483648..2147483647 run return 0
execute if score @s levelUID matches 0 run return 0
#=====

#store args in another storage
$data modify storage phan:level_index resource_location set value "$(resource_location)"
$data modify storage phan:level_index nbt set value "$(nbt)"
$data modify storage phan:level_index value set value '$(value)'

#do it
execute store result storage phan:level_index level_id int 1 run scoreboard players get @s levelUID
function phan:level_manager/set_field_go with storage phan:level_index


#player should see the page they're on get updated
execute if entity @s[type=player] run function phan:level_manager/panel/_open_page_index