#executed by a bot controller entity
execute unless score @s botSkill matches 2..6 run data modify storage phan:bot_args prefix set value "038"
execute if score @s botSkill matches 2 run data modify storage phan:bot_args prefix set value "039"
execute if score @s botSkill matches 3 run data modify storage phan:bot_args prefix set value "040"
execute if score @s botSkill matches 4 run data modify storage phan:bot_args prefix set value "041"
execute if score @s botSkill matches 5 run data modify storage phan:bot_args prefix set value "042"
execute if score @s botSkill matches 6 run data modify storage phan:bot_args prefix set value "043"