scoreboard players add @s timerAdd 0

scoreboard players remove @s timerAddDelay 1
execute if entity @s[scores={timerAddDelay=..0,timerAdd=1..}] run function phan:game/1/player/time_changes_apply_pos
execute if entity @s[scores={timerAddDelay=..0,timerAdd=..-1}] run function phan:game/1/player/time_changes_apply_neg