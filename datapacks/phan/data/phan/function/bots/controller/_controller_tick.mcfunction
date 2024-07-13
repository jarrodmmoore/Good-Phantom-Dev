#get the function args we'll need into a generic storage
#that way we can read from it without having preface with a macro index function every dang time
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:bots/controller/store_args_in_generic_storage with storage phan:bot_args

#run code as our bot
scoreboard players set #botSuccess value 0
scoreboard players set #botDataUpdate value 0
function phan:bots/controller/find_entity with storage phan:bot_data

#no bot found? respawn
execute if score #botSuccess value matches 0 run function phan:bots/controller/respawn_at_some_location

#adopt data returned from the bot if something changed
execute if score #botDataUpdate value matches 1 run function phan:bots/controller/accept_data_from_bot