#check our left and right side to see if they're blocked by walls or pits

#=====
#left

scoreboard players set #math value 6

execute unless block ^-1 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^-1 ^-1 ^ #phan:not_solid if block ^-1 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute unless block ^-2 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^-2 ^-1 ^ #phan:not_solid if block ^-2 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute unless block ^-3 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^-3 ^-1 ^ #phan:not_solid if block ^-3 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute if block ^-4 ^-1 ^ #phan:not_solid if block ^-4 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute positioned ^-3 ^ ^ if entity @e[tag=enemyMine,type=item_display,distance=..2] run scoreboard players remove #math value 1

execute if score #math value matches ..5 run tag @s remove AIBC_hookLeft

#=====
#right

scoreboard players set #math value 6

execute unless block ^1 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^1 ^-1 ^ #phan:not_solid if block ^1 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute unless block ^2 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^2 ^-1 ^ #phan:not_solid if block ^2 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute unless block ^3 ^1 ^ #phan:not_solid run scoreboard players remove #math value 1
execute if block ^3 ^-1 ^ #phan:not_solid if block ^3 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute if block ^4 ^-1 ^ #phan:not_solid if block ^4 ^-2 ^ #phan:not_solid run scoreboard players remove #math value 1

execute positioned ^3 ^ ^ if entity @e[tag=enemyMine,type=item_display,distance=..2] run scoreboard players remove #math value 1

execute if score #math value matches ..5 run tag @s remove AIBC_hookRight