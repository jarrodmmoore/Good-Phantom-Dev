#cycle
scoreboard players add @s movementProgress 1
scoreboard players set @s[scores={movementProgress=61..}] movementProgress 1

#fwd
execute if score @s movementProgress matches 1..7 run tp @s ^ ^ ^.4
execute if score @s movementProgress matches 8..10 run tp @s ^ ^ ^.3
execute if score @s movementProgress matches 11 run tp @s ^ ^ ^.2
execute if score @s movementProgress matches 12 run tp @s ^ ^ ^.15
execute if score @s movementProgress matches 13 run tp @s ^ ^ ^.1
execute if score @s movementProgress matches 14 run tp @s ^ ^ ^.05
execute if score @s movementProgress matches 15 run tp @s ^ ^ ^.025
#back
execute if score @s movementProgress matches 16 run tp @s ^ ^ ^-.025
execute if score @s movementProgress matches 17 run tp @s ^ ^ ^-.05
execute if score @s movementProgress matches 18 run tp @s ^ ^ ^-.1
execute if score @s movementProgress matches 19 run tp @s ^ ^ ^-.15
execute if score @s movementProgress matches 20 run tp @s ^ ^ ^-.2
execute if score @s movementProgress matches 21..23 run tp @s ^ ^ ^-.3
execute if score @s movementProgress matches 24..30 run tp @s ^ ^ ^-.4
#back
execute if score @s movementProgress matches 31..37 run tp @s ^ ^ ^-.4
execute if score @s movementProgress matches 38..40 run tp @s ^ ^ ^-.3
execute if score @s movementProgress matches 41 run tp @s ^ ^ ^-.2
execute if score @s movementProgress matches 42 run tp @s ^ ^ ^-.15
execute if score @s movementProgress matches 43 run tp @s ^ ^ ^-.1
execute if score @s movementProgress matches 44 run tp @s ^ ^ ^-.05
execute if score @s movementProgress matches 45 run tp @s ^ ^ ^-.025
#fwd
execute if score @s movementProgress matches 46 run tp @s ^ ^ ^.025
execute if score @s movementProgress matches 47 run tp @s ^ ^ ^.05
execute if score @s movementProgress matches 48 run tp @s ^ ^ ^.1
execute if score @s movementProgress matches 49 run tp @s ^ ^ ^.15
execute if score @s movementProgress matches 50 run tp @s ^ ^ ^.2
execute if score @s movementProgress matches 51..53 run tp @s ^ ^ ^.3
execute if score @s movementProgress matches 54..60 run tp @s ^ ^ ^.4