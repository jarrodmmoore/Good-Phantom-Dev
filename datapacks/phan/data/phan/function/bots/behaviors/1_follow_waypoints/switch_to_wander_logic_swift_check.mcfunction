scoreboard players set @s botBehavior 2
scoreboard players set @s botWanderTime 1
scoreboard players set @s botHookModifier 0
scoreboard players set @s botHookModifierTime 0
scoreboard players operation @s botAllowedReroutes = #BOT_ALLOWED_REROUTES_ROAM value

#also need to set botTargetPriority back to 0
scoreboard players set @s[scores={botTargetPriority=1..99}] botTargetPriority 0
scoreboard players set @s botTargetID 0