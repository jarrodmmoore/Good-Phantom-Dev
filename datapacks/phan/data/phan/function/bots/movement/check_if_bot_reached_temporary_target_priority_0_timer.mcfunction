scoreboard players set @s[scores={botChaseTime=1..}] botChaseTime 0
scoreboard players remove @s botChaseTime 1

#give up after 2 seconds
execute if score @s botChaseTime matches ..-40 run function phan:bots/movement/check_if_bot_reached_temporary_target_success