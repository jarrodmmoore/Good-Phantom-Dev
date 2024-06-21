#failure sound effect?
scoreboard players set #bad value 0
execute if score @s presentGoal matches 1.. run scoreboard players set #bad value 1

#findID is still in memory so let's use it again
execute as @e[tag=claimedPresent,type=item_display] if score @s playerID = #findID value at @s run function phan:game/1/player/handle_present_entity_fizzle

scoreboard players reset @s presentTime
scoreboard players reset @s presentGoal
title @a[tag=tellMe] subtitle [""]