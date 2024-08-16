scoreboard players set @s botHookModifier 0
scoreboard players set @s botHookModifierTime 0

#jump, if able
execute if score @s airTime matches ..9 run scoreboard players set @s botJumpTimer -1