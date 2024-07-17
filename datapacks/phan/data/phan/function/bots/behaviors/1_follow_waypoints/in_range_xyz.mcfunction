#count how long we've been nearby
scoreboard players add @s botTimeInRange 1

#grant a check?
scoreboard players set #test value 0
#instant check if we've crossed both in x and z coordinates
execute if score @s botApproachX matches 1.. if score #testX value matches ..0 run scoreboard players add #test value 1
execute if score @s botApproachX matches 0 run scoreboard players add #test value 1
execute if score @s botApproachX matches ..-1 if score #testX value matches 0.. run scoreboard players add #test value 1

execute if score @s botApproachZ matches 1.. if score #testZ value matches ..0 run scoreboard players add #test value 1
execute if score @s botApproachZ matches 0 run scoreboard players add #test value 1
execute if score @s botApproachZ matches ..-1 if score #testZ value matches 0.. run scoreboard players add #test value 1
#if we've been in range for long enough, alow grant check
execute if score @s botTimeInRange matches 20.. run scoreboard players set #test value 1