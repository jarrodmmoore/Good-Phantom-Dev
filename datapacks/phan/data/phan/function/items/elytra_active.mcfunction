particle cloud ~ ~ ~ 0.2 0.2 0.2 0 2 force
scoreboard players add @s elytraTimer 1

#clear levitation after 10 ticks
execute if score @s elytraTimer matches 10 run effect clear @s levitation

#stop particles after 1.5 sec
execute if score @s elytraTimer matches 30.. run scoreboard players reset @s elytraTimer