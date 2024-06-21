#assist mode?
execute if score #assist_energy value matches 1 if score #2sec value matches 0 run scoreboard players add @s[scores={energy=..17}] energy 1
execute if score #assist_energy value matches 2.. run scoreboard players set @s energy 18

#set levels based on our energy
execute if score @s energy matches ..0 run xp set @s 0 points
execute if score @s energy matches 1 run xp set @s 41 points
execute if score @s energy matches 2 run xp set @s 82 points
execute if score @s energy matches 3 run xp set @s 123 points
execute if score @s energy matches 4 run xp set @s 164 points
execute if score @s energy matches 5 run xp set @s 205 points
execute if score @s energy matches 6 run xp set @s 246 points
execute if score @s energy matches 7 run xp set @s 287 points
execute if score @s energy matches 8 run xp set @s 328 points
execute if score @s energy matches 9 run xp set @s 369 points
execute if score @s energy matches 10 run xp set @s 410 points
execute if score @s energy matches 11 run xp set @s 451 points
execute if score @s energy matches 12 run xp set @s 492 points
execute if score @s energy matches 13 run xp set @s 533 points
execute if score @s energy matches 14 run xp set @s 574 points
execute if score @s energy matches 15 run xp set @s 615 points
execute if score @s energy matches 16 run xp set @s 656 points
execute if score @s energy matches 17 run xp set @s 697 points
execute if score @s energy matches 18.. run xp set @s 738 points