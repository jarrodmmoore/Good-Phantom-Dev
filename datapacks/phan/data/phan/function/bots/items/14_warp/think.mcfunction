#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score @s botFearsEnderman matches 1 run return 0

#=====

#very easy bots will never use (or even hold)
execute if score @s botSkill matches ..1 run return 0

#easy/normal bots won't use unless they're decently far back
execute if entity @s[scores={botSkill=2,itemLuck=..4}] run return 0
execute if entity @s[scores={botSkill=3,itemLuck=..3}] run return 0

#normal bots and lower won't use in the home stretch (try not to upset any kids playing this by stealing win)
execute if entity @s[tag=vsHomeStretch,scores={botSkill=..3}] run return 0

#don't use warp if we're more than 1 level below rival difficulty
execute if score @s botSkill < #botRivalDifficultyFloor value run return 0

#=====

#hold item and use it next time we think
scoreboard players set @s botHoldingItem 14
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/14_warp/use
tag @s add botUseItemSoon