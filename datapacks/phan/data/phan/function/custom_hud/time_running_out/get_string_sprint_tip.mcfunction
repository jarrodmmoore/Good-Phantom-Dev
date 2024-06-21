#hold button to sprint!
#(make it flash so it's more noticable..)
execute if score @s walkDistance matches ..19999 if score #2sec value matches ..9 run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00BBBB","bold":true}],"color":"white","bold":false}]'
execute if score @s walkDistance matches ..19999 if score #2sec value matches 10..19 run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00FFFF","bold":true}],"color":"white","bold":false}]'
execute if score @s walkDistance matches ..19999 if score #2sec value matches 20..29 run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00BBBB","bold":true}],"color":"white","bold":false}]'
execute if score @s walkDistance matches ..19999 if score #2sec value matches 30.. run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00FFFF","bold":true}],"color":"white","bold":false}]'

#flash even faster if the player ignores the message
execute if score @s walkDistance matches 20000.. if score #5Hz value matches ..1 run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00BBBB","bold":true}],"color":"white","bold":false}]'
execute if score @s walkDistance matches 20000.. if score #5Hz value matches 2.. run data modify storage phan:data display.timer_add set value '["",{"translate":"gp.tutorial.hold_button_to_run","with":[{"keybind":"key.sprint","color":"#00FFFF","bold":true}],"color":"white","bold":false}]'
