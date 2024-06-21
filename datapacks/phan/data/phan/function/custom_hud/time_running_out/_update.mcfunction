scoreboard players set #show value 0

#can only show during active gameplay
execute if score #gameState value matches 3 if score @s pSubGameState matches 1 run scoreboard players set #show value 1

#only show if there's less than 61 seconds remaining
execute unless score @s pTimeRemaining matches 2..1219 run scoreboard players set #show value 0

#set up string to display if we're showing something
execute if score #show value matches 1 run function phan:custom_hud/time_running_out/get_string

#update display
execute if score @s hudNode matches 1..8 run function phan:custom_hud/time_change/_update_1_8
execute if score @s hudNode matches 9..16 run function phan:custom_hud/time_change/_update_9_16
execute if score @s hudNode matches 17..24 run function phan:custom_hud/time_change/_update_17_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/time_change/_update_25_32