#check yourself before you wreck yourself
execute as @a at @s run function phan:join/player_check

#global time goes up every tick so we can figure out exactly WHEN we are
#(it's okay if it overflows!)
scoreboard players add #join_global value 1