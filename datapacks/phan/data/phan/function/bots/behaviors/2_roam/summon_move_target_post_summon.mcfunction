#get coords!
execute store result score #coord_xx value run data get entity @s Pos[0] 10
execute store result score #coord_yy value run data get entity @s Pos[1] 10
execute store result score #coord_zz value run data get entity @s Pos[2] 10

scoreboard players set #success value 1