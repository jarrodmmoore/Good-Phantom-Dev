#open wings once we start falling
execute store result score #test value run data get entity @s Motion[1] 10000
execute if score #test value matches ..-10 run function phan:bots/movement/1_air/transition_to_gliding