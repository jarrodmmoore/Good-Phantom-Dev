#blink on and off with the message
scoreboard players add @s age 1
execute if score @s age matches 40.. run scoreboard players set @s age 0
execute if score @s age matches 0 run data modify entity @s text set value '["",{"text":" "}]'
execute if score @s age matches 20 run data modify entity @s text set value '["",{"translate":"gp.phantom_racer.press_button","shadow_color":[0.25,0.25,0.25,0.25],"with":[{"keybind":"key.jump","color":"yellow"}]}]'