scoreboard players remove #height value 1

#debug
#particle dust{color:[1.0,0.3,0.3],scale:1} ~ ~ ~ 0 0 0 0 1

#we count water as a solid block, here. bots can swim!
execute if score #height value matches -35.. if block ~ ~ ~ #phan:not_solid_not_water positioned ~ ~-1 ~ run function phan:bots/battle/targeting/los_check_validate_path_vertical_downward_recursion