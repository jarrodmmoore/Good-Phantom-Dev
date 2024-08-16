#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score @s botFearsEnderman matches 1 run return 0

#=====

#race and battle have different logic
execute if score #vGameType value matches 1 run function phan:bots/items/15_ender_pearl/think_race
execute unless score #vGameType value matches 1 run function phan:bots/items/15_ender_pearl/think_battle