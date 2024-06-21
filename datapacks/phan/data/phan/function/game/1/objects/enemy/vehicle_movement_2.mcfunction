scoreboard players add @s movementProgress 1

#get into a good start position
execute if score @s movementProgress matches 1 run tp @s ^ ^ ^-4.8

#move in a wide circle
execute if score @s movementProgress matches 2.. run tp @s ^.3 ^ ^ ~3.5 ~