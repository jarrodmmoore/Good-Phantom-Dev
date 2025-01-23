#sideways and very upwards
execute if score @s soulAngle matches 0 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 125 -55
execute if score @s soulAngle matches 1 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 215 -55
execute if score @s soulAngle matches 2 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 305 -55
execute if score @s soulAngle matches 3 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 35 -55

#sideways and flat
execute if score @s soulAngle matches 4 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 5 0
execute if score @s soulAngle matches 5 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 95 0
execute if score @s soulAngle matches 6 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 185 0
execute if score @s soulAngle matches 7 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 275 0

#straight up or down
execute if score @s soulAngle matches 8 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~2 0 -90
execute if score @s soulAngle matches 9 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~2 0 90

#sideways and kinda upwards
execute if score @s soulAngle matches 10 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 5 -15
execute if score @s soulAngle matches 11 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 95 -15
execute if score @s soulAngle matches 12 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 185 -15
execute if score @s soulAngle matches 13 as @e[type=armor_stand,tag=currentCamera] at @s run tp @s ~ ~ ~ 275 -15