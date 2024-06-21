#hit entity?
execute as @e[distance=..2,tag=shootable] at @s run function phan:game/1/projectile/possibly_get_hit

#die after hitting 1 enemy
execute if entity @e[distance=..2,tag=shootable,tag=baddy] unless entity @s[tag=strongerProjectile] run function phan:game/1/projectile/hit_wall