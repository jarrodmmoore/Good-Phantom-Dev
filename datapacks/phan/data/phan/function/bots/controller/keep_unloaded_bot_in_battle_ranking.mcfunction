execute if entity @s[tag=vsHomeStretch] run return run scoreboard players set #checkDoMissingPlayersHS value 1

#rank us!
execute if score @s enderEyes matches 1.. run scoreboard players set @s racePosCalc 0
execute if score @s enderEyes matches 1.. run scoreboard players set #checkDoMissingPlayers0 value 1
#don't have ender eyes at all? we don't need to bother, then