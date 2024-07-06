tellraw @s ["",{"text":"(event: force jump)","italic":true}]
execute unless score @s AIBC_modifier matches 1..2 run tellraw @s ["",{"text":"(enter flight? no)","italic":true}]
execute if score @s AIBC_modifier matches 1 run tellraw @s ["",{"text":"(enter flight? yes)","italic":true}]
execute if score @s AIBC_modifier matches 2 run tellraw @s ["",{"text":"(enter flight? yes, spam jump key)","italic":true}]