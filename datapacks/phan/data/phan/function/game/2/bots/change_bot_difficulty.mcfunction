#executed by a bot controller entity

#set difficulty
$scoreboard players set @s botSkill $(difficulty)

#set display stuff
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_get_colortag
function phan:game/2/bots/change_bot_difficulty_macro with storage phan:bot_args