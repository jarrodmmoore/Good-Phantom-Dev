#wait until "GO!" has happened
execute if score #botsEnabled value matches 2.. run return run function phan:bots/behaviors/0_await_start/get_started

#lvl 6 bot is cheeky and starts early
#160..220
execute if entity @s[tag=botRival,scores={botSkill=6..}] if score #gameTime value matches 182 run return run function phan:bots/behaviors/0_await_start/get_started_cheat
execute if entity @s[tag=!botRival,scores={botSkill=6..}] if score #gameTime value matches 205 run return run function phan:bots/behaviors/0_await_start/get_started_cheat