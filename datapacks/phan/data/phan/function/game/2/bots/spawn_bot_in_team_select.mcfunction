#executed by a bot controller entity
#(set the execution position carefully before running this!)

#summon bot with proper name tag
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/2/bots/spawn_bot_in_team_select_macro with storage phan:bot_args

#finish setting up the entity
scoreboard players operation #test value = @s botSkill
scoreboard players operation #setID value = @s botID
execute as @e[type=zombie,tag=setMe] run function phan:game/2/bots/spawn_bot_in_team_select_post_summon