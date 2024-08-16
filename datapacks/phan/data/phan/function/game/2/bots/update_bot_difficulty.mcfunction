#executed by a bot controller entity

#no action needed if our skill is unchanged
execute if score @s botSkill = @s botOriginalSkill run return 0
#=====

#skill was changed? update it.
#set skill to original setting once again
scoreboard players operation @s botSkill = @s botOriginalSkill

#set display stuff
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/bot_get_colortag
function phan:game/2/bots/change_bot_difficulty_macro with storage phan:bot_args