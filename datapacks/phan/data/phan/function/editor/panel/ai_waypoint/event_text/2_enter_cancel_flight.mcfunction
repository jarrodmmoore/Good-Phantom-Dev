tellraw @s ["",{"text":"(event: enter/cancel flight)","italic":true}]
execute unless score @s AIBC_modifier matches 1 run tellraw @s ["",{"text":"(enter flight)","italic":true}]
execute if score @s AIBC_modifier matches 1 run tellraw @s ["",{"text":"(cancel flight)","italic":true}]