#summon aec with our name on it
execute store result storage phan:bot_args id int 1 run scoreboard players get @s botID
function phan:game/5/top_3/assign_position_bot_name_macro with storage phan:bot_args

#we are bot (1 = bot)
scoreboard players set @e[tag=setMe,type=area_effect_cloud,distance=..1] editArg2 2

#record what botSkill we are
scoreboard players operation @e[tag=setMe,type=area_effect_cloud,distance=..1] editArg3 = @s botSkill