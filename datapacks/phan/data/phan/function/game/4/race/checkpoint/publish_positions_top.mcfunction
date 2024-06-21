#do in reverse order

execute if score @s racePosDisplay matches 1 run scoreboard players set @s racePosDisplay2 8
execute if score @s racePosDisplay matches 1 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➀","color":"yellow","bold":false}]

execute if score @s racePosDisplay matches 2 run scoreboard players set @s racePosDisplay2 7
execute if score @s racePosDisplay matches 2 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➁","color":"white","bold":false}]

execute if score @s racePosDisplay matches 3 run scoreboard players set @s racePosDisplay2 6
execute if score @s racePosDisplay matches 3 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➂","color":"white","bold":false}]

execute if score @s racePosDisplay matches 4 run scoreboard players set @s racePosDisplay2 5
execute if score @s racePosDisplay matches 4 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➃","color":"white","bold":false}]

execute if score @s racePosDisplay matches 5 run scoreboard players set @s racePosDisplay2 4
execute if score @s racePosDisplay matches 5 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➄","color":"white","bold":false}]

execute if score @s racePosDisplay matches 6 run scoreboard players set @s racePosDisplay2 3
execute if score @s racePosDisplay matches 6 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➅","color":"white","bold":false}]

execute if score @s racePosDisplay matches 7 run scoreboard players set @s racePosDisplay2 2
execute if score @s racePosDisplay matches 7 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➆","color":"white","bold":false}]

execute if score @s racePosDisplay matches 8 run scoreboard players set @s racePosDisplay2 1
execute if score @s racePosDisplay matches 8 if entity @s[tag=!playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",{"text":"➇","color":"white","bold":false}]

execute if entity @s[tag=playerReservation] run scoreboard players display numberformat @s racePosDisplay2 fixed ["",["",{"text":"\uE037","color":"white"}]]

#this will all make sense once the next minecraft update comes out and lets us customize the sidebar display ;)