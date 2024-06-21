scoreboard players set #show value 0

#can only show during active gameplay
execute if score #gameState value matches 4 if score #subGameState value matches 0 run scoreboard players set #show value 1

#sync with global time so we can re-use some code written for time attack mode
scoreboard players operation @s pTimeRemaining = #vTimeLimit value

#only show if there's less than 61 seconds remaining
execute unless score @s pTimeRemaining matches 2..1219 run scoreboard players set #show value 0

#press button to sprint! (takes priority over most other stuff)
execute if entity @s[scores={walkDistance=2500..,fallFlying=0}] run scoreboard players set #show value 1

#set up string to display if we're showing something
execute if score #show value matches 1 unless entity @s[scores={walkDistance=2500..,fallFlying=0}] run function phan:custom_hud/time_running_out/get_string
execute if score #show value matches 1 if entity @s[scores={walkDistance=2500..,fallFlying=0}] run function phan:custom_hud/time_running_out/get_string_sprint_tip

#update display
execute if score @s hudNode matches 1..8 run function phan:custom_hud/time_change/_update_1_8
execute if score @s hudNode matches 9..16 run function phan:custom_hud/time_change/_update_9_16
execute if score @s hudNode matches 17..24 run function phan:custom_hud/time_change/_update_17_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/time_change/_update_25_32