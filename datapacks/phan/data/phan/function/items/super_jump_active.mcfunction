particle cloud ~ ~ ~ 0.2 0.2 0.2 0 2 force
scoreboard players add @s elytraTimer 1

#clear levitation after 10 ticks
execute if score @s elytraTimer matches 10 run effect clear @s levitation

#if we're a bot, apply levitation to elyta as well
execute if entity @s[tag=ai] run function phan:bots/items/6_super_jump/manage_vehicle_levitation

#stop particles after 1.5 sec
execute if score @s elytraTimer matches 27.. run scoreboard players reset @s elytraTimer