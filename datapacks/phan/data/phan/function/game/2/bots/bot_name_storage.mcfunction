#assign username, botid, and colortag
$data modify storage phan:bot_data_$(id) colortag set value "$(prefix)"
$execute store result storage phan:bot_data_$(id) botid int 1 run scoreboard players get @s botID
$execute if score @s botName matches 0 run data modify storage phan:bot_data_$(id) username set value "CPU_$(id)"
$execute if score @s botName matches 1.. run data modify storage phan:bot_data_$(id) username set value "$(name)"

#make sure we don't have the same username as a human player! that can cause problems on sidebar when we show points
function phan:game/2/bots/bot_check_duplicate_name