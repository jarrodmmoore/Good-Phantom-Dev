#lower skill bots can have more extreme direction changes
scoreboard players set #random value 0
execute if score @s botSkill matches ..1 store result score #random value run random value -6..6
execute if score @s botSkill matches 2..3 store result score #random value run random value -5..5
execute if score @s botSkill matches 4..5 store result score #random value run random value -4..4
execute if score @s botSkill matches 6.. store result score #random value run random value -3..3

#don't know if we're making progress or not while blinded
scoreboard players set @s botTimeSinceProgress 0
scoreboard players set @s botProgressXX 2147483647
scoreboard players set @s botProgressYY 2147483647
scoreboard players set @s botProgressZZ 2147483647

#apply random number to current rotation modifier
scoreboard players operation @s botHookModifier += #random value
scoreboard players set @s botHookModifierTime 5

#higher skill bots have a safety net: a clamp on rotation offset
execute if entity @s[scores={botSkill=3,botHookModifier=90..}] run scoreboard players set @s botHookModifier 89
execute if entity @s[scores={botSkill=3,botHookModifier=..-90}] run scoreboard players set @s botHookModifier -89

execute if entity @s[scores={botSkill=4,botHookModifier=60..}] run scoreboard players set @s botHookModifier 59
execute if entity @s[scores={botSkill=4,botHookModifier=..-60}] run scoreboard players set @s botHookModifier -59

execute if entity @s[scores={botSkill=5,botHookModifier=40..}] run scoreboard players set @s botHookModifier 39
execute if entity @s[scores={botSkill=5,botHookModifier=..-40}] run scoreboard players set @s botHookModifier -39

execute if entity @s[scores={botSkill=6,botHookModifier=20..}] run scoreboard players set @s botHookModifier 19
execute if entity @s[scores={botSkill=6,botHookModifier=..-20}] run scoreboard players set @s botHookModifier -19