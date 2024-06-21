#need to calculate #timeDiff before calling this ;)

#first place, or right next to them
execute if score #timeDiff value matches ..20 run scoreboard players set @s itemLuck 1
#right on first place's heels
execute if score #timeDiff value matches 21..50 run scoreboard players set @s itemLuck 2
#middling
execute if score #timeDiff value matches 51..100 run scoreboard players set @s itemLuck 3
#falling behind
execute if score #timeDiff value matches 101..160 run scoreboard players set @s itemLuck 4
#way behind
execute if score #timeDiff value matches 161.. run scoreboard players set @s itemLuck 5


#save how far behind 1st we are
scoreboard players operation @s timeBehind1st = #timeDiff value

#keep track of the time difference between 1st and 2nd
execute if score @s racePosDisplay matches 2 run scoreboard players operation #1stPlaceLeadTime value = #timeDiff value