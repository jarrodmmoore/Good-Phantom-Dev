#executed by a bot controller entity
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_check_duplicate_name_macro with storage phan:bot_args

#is is extremely unlikely someone plays good phantom with the exact same username as one of the bots
#BUT
#if they do, we should change the bot's name to avoid issues or confusion!