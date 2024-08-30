#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score @s botFearsEnderman matches 1 run return 0

#=====

#don't screw over the rival bot while they're mid-air. we secretly want them to do well ;)
tag @s add thinkSelf
execute if entity @e[tag=botRival,type=zombie,tag=!thinkSelf,scores={botMoveState=1..2,botSkill=4..}] run return run tag @s remove thinkSelf
tag @s remove thinkSelf

#low difficulty bots might just... not
execute store result score #random value run random value 1..100
execute if entity @s[scores={botSkill=..1},tag=!botUseItemSoon] if score #random value matches ..74 run return 0
execute if entity @s[scores={botSkill=2},tag=!botUseItemSoon] if score #random value matches ..49 run return 0


#hold item and use it next time we think
scoreboard players set @s botHoldingItem 9
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/9_lightning_strike/use
tag @s add botUseItemSoon