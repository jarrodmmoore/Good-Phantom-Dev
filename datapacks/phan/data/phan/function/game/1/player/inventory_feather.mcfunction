execute store result score #test value run clear @s feather[custom_data~{featherAssist:1b}] 0
execute if score #test value matches 0 run give @s minecraft:feather[custom_name='["",{"translate":"gp.game.assist_feather","color":"#DDEEFF","italic":false}]',custom_data={featherAssist:1b}]

#give effects while we're here
scoreboard players set #test value 0
execute if items entity @s weapon.mainhand feather[custom_data~{featherAssist:1b}] run scoreboard players set #test value 1
execute if score #test value matches 1 run effect give @s jump_boost 1 5 false
execute if score #test value matches 1 run effect give @s slow_falling 1 0 false
execute if score #test value matches 0 if score @s fallFlying matches 1 run effect clear @s slow_falling