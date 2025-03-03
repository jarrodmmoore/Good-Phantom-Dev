scoreboard players remove @s levitateState 1
execute if score @s levitateState matches 1.. run effect give @s levitation 1 5 true
execute if score @s levitateState matches ..0 unless score @s elytraTimer matches 1.. run effect clear @s levitation
execute if score @s levitateState matches ..0 run scoreboard players reset @s levitateState