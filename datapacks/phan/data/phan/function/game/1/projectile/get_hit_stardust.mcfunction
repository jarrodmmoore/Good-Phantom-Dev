#die
scoreboard players set @s lifespan 1
execute as @a[tag=projectileOwner] run function phan:tell_spectators
playsound minecraft:block.amethyst_block.hit master @a[tag=!tellMe] ~ ~1 ~ 2 1.5
playsound minecraft:block.amethyst_block.hit master @a[tag=tellMe] ~ ~1 ~ 2 1.5 .3

#projectile owner gets da points
execute if entity @s[tag=!multipack] run scoreboard players add @a[tag=projectileOwner] addScore 50
execute if entity @s[tag=multipack] run scoreboard players add @a[tag=projectileOwner] addScore 250
scoreboard players add @a[tag=projectileOwner] stardustCollected 1
execute as @a[tag=projectileOwner] run function phan:game/1/player/count_combo

#can't be shot again
tag @s remove shootable