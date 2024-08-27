#mark global completion
execute if score #chosenLevel value matches 1 if score #dream1Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #chosenLevel value matches 1 if score #dream1Completed value matches 0 run scoreboard players set #dream1Completed value 1

execute if score #chosenLevel value matches 2 if score #dream2Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #chosenLevel value matches 2 if score #dream2Completed value matches 0 run scoreboard players set #dream2Completed value 1

execute if score #chosenLevel value matches 3 if score #dream3Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #chosenLevel value matches 3 if score #dream3Completed value matches 0 run scoreboard players set #dream3Completed value 1

execute if score #chosenLevel value matches 4 if score #dream4Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #chosenLevel value matches 4 if score #dream4Completed value matches 0 run scoreboard players set #dream4Completed value 1

execute if score #chosenLevel value matches 5 if score #dream5Completed value matches 0 run scoreboard players add #dreamsCompleted value 1
execute if score #chosenLevel value matches 5 if score #dream5Completed value matches 0 run scoreboard players set #dream5Completed value 1

#individual player that ran this function also gets the score
execute if score #chosenLevel value matches 1 run scoreboard players set @s dream1Completed 1
execute if score #chosenLevel value matches 2 run scoreboard players set @s dream2Completed 1
execute if score #chosenLevel value matches 3 run scoreboard players set @s dream3Completed 1
execute if score #chosenLevel value matches 4 run scoreboard players set @s dream4Completed 1
execute if score #chosenLevel value matches 5 run scoreboard players set @s dream5Completed 1

#we finished a dream! wow
scoreboard players add @s anyDreamCompleted 1

#recalculate lighting in the lobby
schedule function phan:game/0/lighting/update 1t