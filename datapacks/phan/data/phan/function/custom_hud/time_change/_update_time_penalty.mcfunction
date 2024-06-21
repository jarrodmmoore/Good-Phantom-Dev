#quick hack: re-using variables and storage for the timer add thingy
scoreboard players operation #timerAddMin value = @s pPenaltyPoints
data modify storage phan:data display.timer_add set value '["",{"text":"\\uF005\\uF005\\uF005\\uF005\\uF005"},{"text":" -","color":"red","bold":true},{"score":{"name":"#timerAddMin","objective":"value"},"color":"red","bold":true}]'

#update display
execute if score @s hudNode matches 1..8 run function phan:custom_hud/time_change/_update_1_8
execute if score @s hudNode matches 9..16 run function phan:custom_hud/time_change/_update_9_16
execute if score @s hudNode matches 17..24 run function phan:custom_hud/time_change/_update_17_24
execute if score @s hudNode matches 25..32 run function phan:custom_hud/time_change/_update_25_32