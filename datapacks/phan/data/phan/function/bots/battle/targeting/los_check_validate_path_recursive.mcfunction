scoreboard players remove #recursions value 1

#quit out when we reach the target
execute positioned ~-.5 -64 ~-.5 if entity @s[dx=1,dy=400,dz=1] run return run function phan:bots/battle/targeting/los_check_validate_path_success

#keep checking forward
execute if score #recursions value matches 1.. positioned ^ ^ ^.9 if function phan:bots/battle/targeting/los_check_validate_path_vertical run function phan:bots/battle/targeting/los_check_validate_path_recursive