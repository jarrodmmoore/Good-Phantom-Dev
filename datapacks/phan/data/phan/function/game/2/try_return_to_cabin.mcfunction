#determine if we're allowed to force the game back to lobby
scoreboard players set #test2 value 1

#if admin mode is ON and we're NOT admin, this fails
execute if score #requireAdmin value matches 1.. if entity @s[tag=!admin] run scoreboard players set #test2 value 0

execute if score #test2 value matches 0 run function phan:game/2/return_to_cabin_rejected
execute if score #test2 value matches 1 run function phan:game/2/return_to_cabin