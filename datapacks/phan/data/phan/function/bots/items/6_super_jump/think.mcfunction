#kick out if on cooldown
execute if score @s inputCooldown matches 1.. run return 0

#exit out if we don't want to get our item stolen
execute if score @s botFearsEnderman matches 1 run return 0

#=====

#never use while in water
execute if entity @s[scores={inWater=1..}] run return 0

#don't chain super jumps into one another
execute if entity @s[tag=botUsingSuperJump] run return 0

#hard+ bots won't use until homestrech (should probably prioritize the pre-defined shortcuts)
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=4..},tag=!vsHomeStretch] run return 0

#normal bots have 50% chance of not using
execute store result score #random2 value run random value 1..2
execute if score #vGameType value matches 1 if entity @s[scores={botSkill=3},tag=!vsHomeStretch] if score #random2 value matches 1 run return 0

#easy+ bots won't use if there's a ceiling above them
scoreboard players set #test1 value 0
execute positioned ~ ~2 ~ run function phan:bots/items/6_super_jump/count_blocks_to_ceiling
execute if score #test1 value matches ..20 run return 0
#also don't use if the waypoint we're currently targeting has a ceiling above it
scoreboard players operation #test2 value = @s botTargetYYCeiling
scoreboard players operation #test2 value -= @s botTargetYY
execute if score @s botBehavior matches 1 if score #test2 value matches ..200 run return 0


#use it (also we enter "improvised flight" mode)
tag @s add botImprovFlight
function phan:bots/items/6_super_jump/use