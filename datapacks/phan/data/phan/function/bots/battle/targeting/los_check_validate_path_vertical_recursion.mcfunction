scoreboard players add #height value 1
#we count water as a solid block, here. bots can swim!
execute if score #height value matches ..35 unless block ~ ~ ~ #phan:not_solid_not_water positioned ~ ~1 ~ run function phan:bots/battle/targeting/los_check_validate_path_vertical_recursion