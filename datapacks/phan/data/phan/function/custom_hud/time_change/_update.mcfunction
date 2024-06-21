scoreboard players set #show value 0

#can only show during active gameplay
execute if score #gameState value matches 1 if score @s pSubGameState matches 1 run scoreboard players set #show value 1
execute if score #gameState value matches 0 run scoreboard players set #show value 1

#alt functionality if we have addPointsLater
execute if score @s addPointsLater matches 1.. if score #show value matches 1 run function phan:custom_hud/time_change/_update_time_bonus
execute if score @s addPointsLater matches 1.. if score #show value matches 1 run return 0

#alt functionality if we have penalty
execute if score @s pPenaltyPoints matches 1.. if score #show value matches 1 run function phan:custom_hud/time_change/_update_time_penalty
execute if score @s pPenaltyPoints matches 1.. if score #show value matches 1 run return 0

#don't show if timerAdd is 0
execute if score @s timerAdd matches 0 run scoreboard players set #show value 0

#set up string to display if we're showing something
execute if score #show value matches 1 run function phan:custom_hud/time_change/get_string

#update display
execute if score @s hudNode matches 1..8 run function phan:custom_hud/time_change/_update_1_8
execute if score @s hudNode matches 9..16 run function phan:custom_hud/time_change/_update_9_16
execute if score @s hudNode matches 17..24 run function phan:custom_hud/time_change/_update_17_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/time_change/_update_25_32