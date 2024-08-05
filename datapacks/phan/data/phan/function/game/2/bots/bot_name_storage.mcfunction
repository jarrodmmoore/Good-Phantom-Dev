#assign username, botid, botteam, and colortag
$data modify storage phan:bot_data_$(id) colortag set value "$(prefix)"
$execute store result storage phan:bot_data_$(id) botid int 1 run scoreboard players get @s botID
$execute if score @s botName matches 0 run data modify storage phan:bot_data_$(id) username set value "CPU_$(id)"
$execute if score @s botName matches 1.. run data modify storage phan:bot_data_$(id) username set value "$(name)"

$execute unless score @s botSkill matches 2..6 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayVEasy"
$execute if score @s botSkill matches 2 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayEasy"
$execute if score @s botSkill matches 3 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayNormal"
$execute if score @s botSkill matches 4 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayHard"
$execute if score @s botSkill matches 5 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayTryhard"
$execute if score @s botSkill matches 6 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayTryharder"

#make sure we don't have the same username as a human player! that can cause problems on sidebar when we show points
function phan:game/2/bots/bot_check_duplicate_name

#put on the proper team
$function phan:game/2/bots/change_bot_difficulty_macro_2 with storage phan:bot_data_$(id)