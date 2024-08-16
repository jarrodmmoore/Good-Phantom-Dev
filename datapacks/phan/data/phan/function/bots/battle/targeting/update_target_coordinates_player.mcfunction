scoreboard players set @s botBehavior 3

scoreboard players set #targetExists value 0
execute as @e[tag=playing,distance=..30] if score @s playerID = #checkID value run function phan:bots/battle/targeting/set_temporary_target_player
execute if score #targetExists value matches 0 run function phan:bots/battle/targeting/lost_target