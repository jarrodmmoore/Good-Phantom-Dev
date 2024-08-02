#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score #botFearsEnderman value matches 1 run return 0

#=====

#never use while in water
execute if entity @s[scores={inWater=1..}] run return 0

#very easy bots will never use
execute if score @s botSkill matches ..1 run return 0

#hard+ bots won't use until homestrech (should probably prioritize the pre-defined shortcuts)
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=4..},tag=!vsHomeStretch] run return 0

#normal bots have 50% chance of not using
execute store result score #random2 value run random value 1..2
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=3},tag=!vsHomeStretch] if score #random2 value matches 1 run return 0

#easy+ bots won't use if there's a ceiling above them
scoreboard players set #test1 value 0
execute positioned ~ ~2 ~ run function phan:bots/items/6_super_jump/count_blocks_to_ceiling
execute if score #test1 value matches ..15 run return 0
#also don't use if the waypoint we're currently targeting has a ceiling above it
scoreboard players operation #test2 value = @s botTargetYYCeiling
scoreboard players operation #test2 value -= @s botTargetYY
execute if score @s botBehavior matches 1 if score #test2 value matches ..200 run return 0

#=====

#hold item
scoreboard players set @s botHoldingItem 17

#if we're grounded, jump before using
execute if score @s onGround matches 1.. run return run function phan:bots/items/17_firework_rocket/jump_before_using

#=====

#use it (also we enter "improvised flight" mode)
tag @s add botImprovFlight
execute unless function phan:bots/movement/check_for_vehicle run function phan:bots/movement/1_air/transition_to_gliding

#random trajectory
execute store result score #random value run random value 1..4
execute if score @s botSkill matches 4.. store result score #random value run random value 1..3
execute if score #random value matches 1 rotated ~ ~-10 run return run function phan:bots/items/17_firework_rocket/use
execute if score #random value matches 2 rotated ~ ~-20 run return run function phan:bots/items/17_firework_rocket/use
execute if score #random value matches 3 rotated ~ ~-30 run return run function phan:bots/items/17_firework_rocket/use
execute if score #random value matches 4 rotated ~ ~-40 run function phan:bots/items/17_firework_rocket/use