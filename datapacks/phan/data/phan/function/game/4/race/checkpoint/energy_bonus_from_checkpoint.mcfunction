#players further behind get free energy
execute if score @s timeBehind1st matches 90..149 run scoreboard players add @s energy 1
execute if score @s timeBehind1st matches 150..209 run scoreboard players add @s energy 2
execute if score @s timeBehind1st matches 210.. run scoreboard players add @s energy 3
execute if score @s energy matches 19..99 run scoreboard players set @s energy 18