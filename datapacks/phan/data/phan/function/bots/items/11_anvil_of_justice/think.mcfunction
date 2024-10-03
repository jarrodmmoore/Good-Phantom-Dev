#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we're in 1st and don't want to someone else stealing our anvil and dunking on us
execute if entity @s[scores={botSkill=4..,racePosDisplay=2}] if score @s botFearsEnderman matches 1 run return 0

#=====

#don't anvil 1st place if they're a high difficulty rival bot
tag @s add thinkSelf
execute if entity @e[tag=botRival,type=zombie,tag=!thinkSelf,scores={botSkill=5..,racePosDisplay=1}] run return run tag @s remove thinkSelf
tag @s remove thinkSelf

#hard difficulty and below: don't use while in 1st
execute if entity @s[scores={botSkill=..4,racePosDisplay=1}] run return 0
#note: anvil was changed in v1.1.3 to never target its user. tryhard+ bots are aware of this and are fully prepared to be a punk about it

#low difficulty bots might just... not
execute store result score #random value run random value 1..100
execute if entity @s[scores={botSkill=..1},tag=!botUseItemSoon] if score #random value matches ..74 run return 0
execute if entity @s[scores={botSkill=2},tag=!botUseItemSoon] if score #random value matches ..49 run return 0


#hold item and use it next time we think
scoreboard players set @s botHoldingItem 11
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/11_anvil_of_justice/use
tag @s add botUseItemSoon