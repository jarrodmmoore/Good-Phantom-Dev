scoreboard players remove @s botHookModifierTime 1

#reset at 0
execute if score @s botHookModifierTime matches ..0 run scoreboard players set @s botHookModifier 0

#jump if rotation modifier sends us to a cliff
execute if score @s botMoveState matches 0 if block ~ ~-1 ~ #phan:not_solid if block ~ ~-1 ~ #phan:not_solid run scoreboard players set @s botJumpTimer -1