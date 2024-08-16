#exit out if we're climbing a staircase
execute if block ^0.3 ^ ^0.6 #minecraft:stairs[half=bottom] if block ^0.3 ^1 ^0.6 #phan:not_solid run return 0
execute if block ^-0.3 ^ ^0.6 #minecraft:stairs[half=bottom] if block ^-0.3 ^1 ^0.6 #phan:not_solid run return 0

#=====

#figure out which sides are open
execute store result score #test value run execute if block ^1 ^ ^0.6 #phan:not_solid
execute store result score #test2 value run execute if block ^-1 ^ ^0.6 #phan:not_solid

#go a random way
scoreboard players set #random value 0
execute if score #test value matches 1 if score #test2 value matches 1 store result score #random value run random value 1..2
execute if score #test value matches 1 if score #test2 value matches 0 run scoreboard players set #random value 1
execute if score #test value matches 0 if score #test2 value matches 1 run scoreboard players set #random value 2
execute if score #random value matches 0 run return 0

#use hook modifier to force us to turn
execute if score #random value matches 1 run scoreboard players set @s botHookModifier -80
execute if score #random value matches 2 run scoreboard players set @s botHookModifier 80
scoreboard players set @s botHookModifierTime 2