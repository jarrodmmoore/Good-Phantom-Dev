#max recursions is the distance we're willing to walk to reach the target
scoreboard players set #recursions value 25
#i'm keeping this relatively low because we're going to do nested recursion

scoreboard players set #heightPrev value 100
execute positioned ^ ^ ^.9 run function phan:bots/battle/targeting/los_check_validate_path_recursive