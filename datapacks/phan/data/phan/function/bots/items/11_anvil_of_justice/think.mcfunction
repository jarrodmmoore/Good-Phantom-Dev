#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we're in 1st and don't want to someone else stealing our anvil and dunking on us
execute if entity @s[scores={botSkill=4..,racePosDisplay=2}] if score #botFearsEnderman value matches 1 run return 0

#=====

#don't anvil 1st place if they're a high difficulty rival bot
tag @s add thinkSelf
execute if entity @e[tag=botRival,type=zombie,tag=!thinkSelf,scores={botSkill=5..,racePosDisplay=1}] run return 0
tag @s remove thinkSelf

#normal+ difficulty: don't anvil ourselves
execute if entity @s[scores={botSkill=3..,racePosDisplay=1}] run return 0

#low difficulty bots might just... not
execute store result score #random value run random value 1..100
execute if entity @s[scores={botSkill=..1},tag=!botUseItemSoon] if score #random value matches ..74 run return 0
execute if entity @s[scores={botSkill=2},tag=!botUseItemSoon] if score #random value matches ..49 run return 0


#hold item and use it next time we think
scoreboard players set @s botHoldingItem 11
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/11_anvil_of_justice/use
tag @s add botUseItemSoon