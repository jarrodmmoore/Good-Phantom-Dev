#count down
scoreboard players remove @s bodyHitbox 1

#we do damage like a projectile
tag @s add attacker
scoreboard players operation #projID value = @s playerID
scoreboard players operation #projUID value = @s playerID
scoreboard players set #projDamage value 2
execute positioned ~ ~ ~ run tag @e[tag=shootable,distance=..2,limit=1] add biteHit
execute positioned ~ ~0.5 ~ run tag @e[tag=shootable,distance=..2,limit=1] add biteHit
execute positioned ~ ~1 ~ run tag @e[tag=shootable,distance=..2,limit=1] add biteHit
execute as @e[tag=biteHit] run function phan:game/1/projectile/get_hit_index
tag @e[tag=biteHit] remove biteHit
tag @s remove attacker

#flame effect
particle flame ~ ~1 ~ 0.3 0.3 0.3 0.05 2 force