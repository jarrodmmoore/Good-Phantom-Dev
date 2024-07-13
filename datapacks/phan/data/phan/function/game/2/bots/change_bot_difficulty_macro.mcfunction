$data modify storage phan:bot_data_$(id) colortag set value "$(prefix)"
$execute unless score @s botSkill matches 2..6 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayVEasy"
$execute if score @s botSkill matches 2 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayEasy"
$execute if score @s botSkill matches 3 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayNormal"
$execute if score @s botSkill matches 4 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayHard"
$execute if score @s botSkill matches 5..6 run data modify storage phan:bot_data_$(id) botteam set value "botDisplayTryhard"

$function phan:game/2/bots/change_bot_difficulty_macro_2 with storage phan:bot_data_$(id)