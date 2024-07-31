#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score #botFearsEnderman value matches 1 run return 0

#=====

#bots won't drink if they're at max energy already
execute if entity @s[scores={energy=18..}] run return run scoreboard players set @s[scores={botSkill=..2}] botHoldingItem 4

#hard bots won't drink if they'd be wasting any of the energy gained
execute if entity @s[scores={botSkill=4,energy=10..}] run return run scoreboard players set @s botHoldingItem 0

#tryhard bots won't drink until they're low on energy (want to avoid losing more energy to lightning strikes)
execute if entity @s[scores={botSkill=5..,energy=4..}] run return run scoreboard players set @s botHoldingItem 0

#hold item and drink it next time we think
scoreboard players set @s botHoldingItem 4
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/4_energy_potion/use
tag @s add botUseItemSoon