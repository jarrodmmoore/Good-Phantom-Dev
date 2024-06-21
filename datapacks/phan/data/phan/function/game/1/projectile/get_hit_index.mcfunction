#don't eat items for no reason
scoreboard players set #dontConsumeItem value 1

execute as @a[tag=doneWithIntro] if score @s playerID = #projID value run tag @s add projectileOwner

#what are we?
execute if entity @s[tag=stardust] at @s unless score @s hitstun matches 1.. run function phan:game/1/projectile/get_hit_stardust
execute if entity @s[tag=clock] at @s unless score @s hitstun matches 1.. run function phan:game/1/projectile/get_hit_clock
execute if entity @s[tag=enderEye] at @s run function phan:game/1/projectile/get_hit_ender_eye
execute if entity @s[tag=baddy] unless score @s hitByProjectile1 = #projUID value unless score @s hitByProjectile2 = #projUID value run function phan:game/1/projectile/get_hit_enemy
execute if entity @s[tag=evilProjectile] run function phan:game/1/projectile/get_hit_evil_projectile
execute if entity @s[tag=targetNode] at @s run function phan:game/1/projectile/get_hit_target
execute if entity @s[tag=bigTarget] at @s run function phan:game/1/projectile/get_hit_big_target

#clean up tags
tag @a[tag=projectileOwner] remove projectileOwner
scoreboard players set #dontConsumeItem value 0