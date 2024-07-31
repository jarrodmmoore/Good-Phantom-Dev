#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score #botFearsEnderman value matches 1 run return 0

#=====

#never use while gliding (unless improv flying)
execute if score @s botMoveState matches 2 unless entity @s[tag=botImprovFlight,scores={botSkill=3..}] run return run scoreboard players set @s botHoldingItem 0

#don't use while ascending mid-air
execute store result score #editArg3 value run data get entity @s Motion[1] 10000
execute if score @s botMoveState matches 1 if score #editArg3 value matches 10.. run return run scoreboard players set @s botHoldingItem 8


#hold item and use it next time we think
scoreboard players set @s botHoldingItem 8
#use
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/8_super_speed_pad/use
tag @s add botUseItemSoon