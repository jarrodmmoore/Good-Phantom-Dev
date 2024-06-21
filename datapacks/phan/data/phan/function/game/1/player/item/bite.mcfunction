#effects
execute if score @s moveVelocity matches ..199 run particle sweep_attack ^ ^-.5 ^1.5 0 0 0 0 1 force @a
execute if score @s moveVelocity matches 200.. run particle sweep_attack ^ ^-.5 ^2 0 0 0 0 1 force @a
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1

#do damage
#(fun fact: the player's bite is actually a projectile attack)
tag @s add attacker
scoreboard players operation #projID value = @s playerID
scoreboard players add #assignProjectileID value 1
scoreboard players operation #projUID value = #assignProjectileID value
scoreboard players set #projDamage value 3
scoreboard players set #invalid value 0
execute positioned ^ ^ ^2 if block ~ -64 ~ structure_void if block ~ ~ ~ barrier run scoreboard players set #invalid value 1
execute if score #invalid value matches 0 positioned ^ ^ ^2 positioned ~ ~-2 ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute if score #invalid value matches 0 positioned ^ ^ ^2 positioned ~ ~-1 ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute if score #invalid value matches 0 positioned ^ ^ ^2 positioned ~ ~ ~ run tag @e[tag=shootable,distance=..2] add biteHit
execute positioned ~ ~ ~ run tag @e[tag=shootable,distance=..1] add biteHit
execute positioned ~ ~1 ~ run tag @e[tag=shootable,distance=..1] add biteHit
execute as @e[tag=biteHit] run function phan:game/1/projectile/get_hit_index
tag @e[tag=biteHit] remove biteHit
tag @s remove attacker

#versus mode: do damage
execute if score #gameState value matches 4 run function phan:game/4/projectile/detect_player_bite

scoreboard players set @s inputCooldownA 15
scoreboard players set @s bufferInput1 0
scoreboard players reset @s carrotInput