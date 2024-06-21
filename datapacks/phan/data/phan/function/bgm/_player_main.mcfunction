#count down and play music again when timer hits 0
scoreboard players remove @s musicTime 1
execute if score @s musicTime matches ..0 run function phan:bgm/try_play