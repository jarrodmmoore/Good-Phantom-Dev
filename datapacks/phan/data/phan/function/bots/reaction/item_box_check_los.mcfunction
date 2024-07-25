scoreboard players remove #recursions value 1

#los check successful
execute if entity @s[distance=..1] run return 1

#keep looking if no success yet
execute if score #recursions value matches 1.. positioned ^ ^ ^0.9 if block ~ ~1.8 ~ #phan:not_solid run return run function phan:bots/reaction/item_box_check_los

#los check failed if we got here
scoreboard players set #test value 0
return 0