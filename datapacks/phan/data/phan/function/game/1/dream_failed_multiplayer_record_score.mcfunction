#save score (didn't do this. need a punishment for not getting in the portal, otherwise players would have zero incentive for going in there)
#execute if score @s pCurrentArea matches 1 run scoreboard players operation @s scoreArea1 = @s scoreCurrent
#execute if score @s pCurrentArea matches 2 run scoreboard players operation @s scoreArea2 = @s scoreCurrent
#execute if score @s pCurrentArea matches 3 run scoreboard players operation @s scoreArea3 = @s scoreCurrent
#scoreboard players operation @s scoreTotal += @s scoreCurrent

#zero our score for this area
scoreboard players set @s scoreCurrent 0
scoreboard players set @s scoreCurrent2 0
execute if score @s pCurrentArea matches 1 run scoreboard players set @s scoreArea1 0
execute if score @s pCurrentArea matches 2 run scoreboard players set @s scoreArea2 0
execute if score @s pCurrentArea matches 3 run scoreboard players set @s scoreArea3 0