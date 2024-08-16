#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score @s botFearsEnderman matches 1 run return 0

#=====

#low difficulty bots might just... not
execute store result score #random value run random value 1..100
execute if entity @s[scores={botSkill=..1},tag=!botUseItemSoon] if score #random value matches ..60 run return 0
execute if entity @s[scores={botSkill=2},tag=!botUseItemSoon] if score #random value matches ..35 run return 0


#hold item and use it next time we think
scoreboard players set @s botHoldingItem 16
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/16_enderman_thief/use
tag @s add botUseItemSoon