#look where we're going? kinda? via /rotate
execute if score @s movementPattern matches 1..2 on vehicle if entity @s[type=armor_stand] rotated as @s on passengers if entity @s[tag=enemyGhast] rotated ~-90 0 run rotate @s ~ ~
execute unless score @s movementPattern matches 1..2 on vehicle if entity @s[type=armor_stand] rotated as @s on passengers if entity @s[tag=enemyGhast] rotated ~ 0 run rotate @s ~ ~

#wait before shooting again
scoreboard players set @s editArg2 0