#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score #botFearsEnderman value matches 1 run return 0

#=====

#very easy bot won't drink if they're ahead
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=..1,itemLuck=..3}] run return run scoreboard players set @s botHoldingItem 5

#easy bot won't drink if they're near the lead
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=2,itemLuck=..2}] run return run scoreboard players set @s botHoldingItem 0

#normal bot won't drink if they're right around 1st
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=3,itemLuck=..1}] run return run scoreboard players set @s botHoldingItem 0

#don't drink if we're already on speed
execute if entity @s[scores={botSkill=3..,botEffectSpeedPotion=1..}] run return run scoreboard players set @s botHoldingItem 0

#hard bots won't drink unless they're on the ground or in water
execute if score @s botSkill matches 4.. unless score @s botMoveState matches 1..2 run return run scoreboard players set @s botHoldingItem 0


#hold item and drink it next time we think
scoreboard players set @s botHoldingItem 5
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/5_swiftness_potion/use
tag @s add botUseItemSoon