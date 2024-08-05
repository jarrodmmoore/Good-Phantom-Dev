#count how long we've been nearby
scoreboard players add @s botTimeInRange 1

#instant check if we've crossed both in x and z coordinates
execute if score @s botApproachX matches 11.. if score #testX value matches ..14 run scoreboard players set @s botApproachX 0
execute if score @s botApproachX matches ..-11 if score #testX value matches -14.. run scoreboard players set @s botApproachX 0
execute if score @s botApproachX matches -10..10 run scoreboard players add #test value 1

execute if score @s botApproachZ matches 11.. if score #testZ value matches ..14 run scoreboard players set @s botApproachZ 0
execute if score @s botApproachZ matches ..-11 if score #testZ value matches -14.. run scoreboard players set @s botApproachZ 0
execute if score @s botApproachZ matches -10..10 run scoreboard players add #test value 1

#faster check if we're right on the coordinates
execute if score #testX value matches -25..25 if score #testZ value matches -25..25 run scoreboard players add @s botTimeInRange 2
execute if score #testX value matches -18..18 if score #testZ value matches -18..18 run scoreboard players add @s botTimeInRange 4
execute if score #testX value matches -10..10 if score #testZ value matches -10..10 run scoreboard players add @s botTimeInRange 8

#if we're dodging or boosting off a mine, grant the check
execute unless score @s botPreparedToDodgeTrap matches 0 run scoreboard players add @s botTimeInRange 15

#if we've been in range for long enough, grant check
execute if score @s botTimeInRange matches 15.. run scoreboard players set #test value 2