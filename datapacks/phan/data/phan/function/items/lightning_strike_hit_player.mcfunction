#credit attacker
scoreboard players operation @s attackerID = #attackerID value
scoreboard players set @s attackTime 100
scoreboard players set @s hurtfulTime 3

#if flying, hit us with fake damage, which will do a better job stopping our momentum
execute if score @s fallFlying matches 1.. run damage @s 6 mob_attack at ^ ^ ^10
execute if score @s fallFlying matches 1.. run summon minecraft:lightning_bolt ~ ~5 ~
#otherwise, use actual lightning for damage
execute if score @s fallFlying matches ..0 run summon minecraft:lightning_bolt ~ ~ ~
execute unless score @s shieldTime matches 1.. run effect give @s[type=player] slowness 4 2 true
execute unless score @s shieldTime matches 1.. run scoreboard players set @s[tag=ai] botEffectSlowness 80

#lose half of magic meter (unless shielded)
scoreboard players operation #test value = @s energy
scoreboard players operation #test value /= #2 value
execute unless score @s shieldTime matches 1.. run scoreboard players operation @s energy -= #test value
execute if score @s energy matches ..-1 run scoreboard players set @s energy 0

#eat shield after it blocks this attack
scoreboard players set @s[scores={shieldTime=3..}] shieldTime 2