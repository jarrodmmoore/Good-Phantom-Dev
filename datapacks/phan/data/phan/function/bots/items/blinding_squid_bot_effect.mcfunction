scoreboard players remove @s squidBlindTime 1

#particles
execute if score @s squidBlindTime matches 0.. anchored eyes positioned ^ ^ ^1 run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0.09 3 force @a[distance=..50]

#screw with bot hook modifier to make them swerve around
execute if score @s squidBlindTime matches -25.. run function phan:bots/items/blinding_squid_bot_hook_modifier

#done
execute if score @s squidBlindTime matches ..-30 run scoreboard players reset @s squidBlindTime

#not blinded as long when using shield
execute if score @s shieldTime matches 1.. run scoreboard players set @s[scores={squidBlindTime=20..}] squidBlindTime 19