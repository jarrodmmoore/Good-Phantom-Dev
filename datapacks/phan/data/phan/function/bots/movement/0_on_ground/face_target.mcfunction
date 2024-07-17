execute store result score #xVel value run data get entity @s Motion[0] 100000
execute store result score #yVel value run data get entity @s Motion[1] 100000
execute store result score #zVel value run data get entity @s Motion[2] 100000

$execute facing $(target_x).$(target_x_dec) ~ $(target_z).$(target_z_dec) rotated ~$(yaw_offset) 0 run tp @s ~ ~ ~ ~ 0

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #xVel value
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #yVel value
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #zVel value
