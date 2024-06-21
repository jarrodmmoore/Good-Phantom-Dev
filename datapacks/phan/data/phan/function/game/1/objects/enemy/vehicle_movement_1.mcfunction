scoreboard players add @s movementProgress 1

#get into a good start position
execute if score @s movementProgress matches 1 run tp @s ^ ^ ^-2.4

#move in a tight circle
execute if score @s movementProgress matches 2.. run tp @s ^.3 ^ ^ ~7 ~