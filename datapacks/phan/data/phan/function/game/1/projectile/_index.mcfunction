#get ID if we don't already have one
execute unless score @s projectileID matches -2147483648..2147483647 run function phan:game/1/projectile/_get_id

#do thing
execute if entity @s[tag=projectileLight] run function phan:game/1/projectile/light
execute if entity @s[tag=projectileHeavy] run function phan:game/1/projectile/heavy
execute if entity @s[tag=evilLight] run function phan:game/1/projectile/evil_light
execute if entity @s[tag=evilHeavy] run function phan:game/1/projectile/evil_heavy

execute if entity @s[tag=projectileStrongBite] run function phan:game/1/projectile/strong_bite