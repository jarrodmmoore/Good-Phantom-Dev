#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we're near 1st and don't want to lose the shield
execute if entity @s[scores={botSkill=4..,itemLuck=..2}] if score @s botFearsEnderman matches 1 run return 0

#=====

#normal+: don't use if we're already shielded
execute if entity @s[scores={botSkill=3..,shieldTime=1..}] run return run tag @s[tag=botUseItemSoon] remove botUseItemSoon


#use #test to determine whether to use
scoreboard players set #test value 0

#we'll be comparing the IDs of objects and players soon...
scoreboard players operation #checkID value = @s playerID

#very easy & easy bot: can use at a completely random time with no logic
execute store result score #random value run random value 1..100
execute if score #random value matches ..15 if score @s botSkill matches ..1 run scoreboard players set #test value 1
execute if score #random value matches ..4 if score @s botSkill matches 2 run scoreboard players set #test value 1

#normal+: use if destructible object are nearby that we don't own
execute if score @s botSkill matches 3.. as @e[tag=sonicBlastDestroys,distance=..10] unless score @s playerID = #checkID value run scoreboard players set #test value 1

#easy+: use if enemy players are nearby
execute as @e[tag=playing,distance=..16] unless score @s playerID = #checkID value run scoreboard players set #test value 1

#normal+: use if rocket nearby
execute if score @s botSkill matches 3.. as @e[tag=rocket,type=armor_stand,distance=..14] unless score @s playerID = #checkID value run scoreboard players set #test value 1

#=====
#abort if we didn't decide to use
execute unless score #test value matches 1 run return run scoreboard players set @s[scores={botSkill=3..}] botHoldingItem 12


#normal+ bots might use immediately without holding it for a moment first
execute if score @s botSkill matches 5.. run tag @s add botUseItemSoon
execute if score @s botSkill matches 4 if score #random value matches ..50 run tag @s add botUseItemSoon
execute if score @s botSkill matches 4 if score #random value matches ..20 run tag @s add botUseItemSoon

#hold item and use it next time we think
scoreboard players set @s botHoldingItem 19
execute if entity @s[tag=botUseItemSoon] run return run function phan:bots/items/19_shield/use
tag @s add botUseItemSoon