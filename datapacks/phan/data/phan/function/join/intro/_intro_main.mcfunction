#introProgress

#make sure we're in adventure mode so we can actually advance through the prompts
#(hopefully this is never necessary, but i've messed this up before...)
execute if score @s introProgress matches ..140 run gamemode adventure @s[gamemode=!adventure]

#install the resource pack you muppet
execute if score @s introProgress matches ..59 run title @s subtitle [""]
execute if score @s introProgress matches 60.. run title @s subtitle ["",{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"red"}]

#screen 1
scoreboard players add @s[scores={introProgress=..59}] introProgress 1
execute if score @s introProgress matches ..60 run title @s title ["",{"text":"\uE002"}]
execute if score @s introProgress matches 59 run title @s times 0 50 10
execute if score @s introProgress matches 60 run title @s actionbar ["",{"translate":"gp.lobby.press_key_to_continue","with":[{"keybind":"key.use","color":"white"}]}]
scoreboard players set @s[scores={introProgress=20..59,joinCount=2..}] introProgress 60
execute if score @s introProgress matches 60 if score @s carrotInput matches 1.. run function phan:join/intro/advance

#screen 2
scoreboard players add @s[scores={introProgress=61..99}] introProgress 1
execute if score @s introProgress matches 62 run title @s actionbar [""]
execute if score @s introProgress matches 62..100 run title @s title ["",{"text":"\uE003"}]
execute if score @s introProgress matches 100 run title @s actionbar ["",{"translate":"gp.lobby.press_key_to_continue","with":[{"keybind":"key.use","color":"white"}]}]
scoreboard players set @s[scores={introProgress=76..99,joinCount=2..}] introProgress 100
execute if score @s introProgress matches 100 if score @s carrotInput matches 1.. run function phan:join/intro/advance

#screen 3
scoreboard players add @s[scores={introProgress=101..139}] introProgress 1
execute if score @s introProgress matches 102 run title @s actionbar [""]
execute if score @s introProgress matches 102..140 run title @s title ["",{"text":"\uE004"}]
execute if score @s introProgress matches 140 run title @s actionbar ["",{"translate":"gp.lobby.press_key_to_continue","with":[{"keybind":"key.use","color":"white"}]}]
scoreboard players set @s[scores={introProgress=116..139,joinCount=2..}] introProgress 140
execute if score @s introProgress matches 140 if score @s carrotInput matches 1.. run function phan:join/intro/advance

#done watching screens, we either go to into the game or watch the opening movie depending what other players are doing
scoreboard players add @s[scores={introProgress=141..}] introProgress 1
execute if score @s introProgress matches 142 run function phan:join/intro/finished_prompts
execute if score @s introProgress matches 143.. run function phan:join/intro/flying_into_cabin