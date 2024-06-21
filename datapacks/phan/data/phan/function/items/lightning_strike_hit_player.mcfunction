#credit attacker
scoreboard players operation @s attackerID = #attackerID value
scoreboard players set @s attackTime 100
scoreboard players set @s hurtfulTime 3

#get got
summon minecraft:lightning_bolt ~ ~ ~
effect give @s minecraft:slowness 4 2 true

#lose half of magic meter (unless shielded)
scoreboard players operation #test value = @s energy
scoreboard players operation #test value /= #2 value
execute unless score @s shieldTime matches 1.. run scoreboard players operation @s energy -= #test value
execute if score @s energy matches ..-1 run scoreboard players set @s energy 0

#eat shield after it blocks this attack
scoreboard players set @s[scores={shieldTime=3..}] shieldTime 2